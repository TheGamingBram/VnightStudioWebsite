<?php 
    class connection{
        private $PDO_CONNECTION;

        public $connection_error = False;

        public function __construct(){
            $databaseHost = "localhost";
            $databaseUsername = "root";
            $databasePassword = "";
            $databaseName = "vnstudios";

            try {
                $this->PDO_CONNECTION = new PDO("mysql:host={$databaseHost};dbname={$databaseName}", $databaseUsername, $databasePassword);
            } catch (PDOException $e) {
                $this->connection_error = True;
                // echo 'Connection failed: ' . $e->getMessage();
            }
        }

        public function select($query)
            { //this function is created for get data
                $result = $this->PDO_CONNECTION->query($query);
                return $result->fetchAll(PDO::FETCH_ASSOC);
            }

        public function insert($query)
            { //this function is created for insert data. it will be return last inserted id.
                $this->PDO_CONNECTION->exec($query);
                return $this->cnn->lastInsertId();
            }

        public function update($query)
            { //this function is created for update data and it will be return effected rows (which are updated)
                return $this->PDO_CONNECTION->exec($query);
            }

        public function delete($query)
            { // this function is use to delete data.
                return $this->PDO_CONNECTION->exec($query);
            }

        public function prettyprint($arr)
            { //prettyprint (simple fuction that shows data in a nice format)
                echo '<pre style="color:white;">';
                    print_r($arr);
                echo '</pre>';
            }
        public function CHECK_USERNAME($Insert_Username)
            {
                $UserQuery = "SELECT * FROM users WHERE UserName=:username;";
                $stmt = $this->PDO_CONNECTION->prepare($UserQuery);
                $stmt->execute(array(':username' => $Insert_Username));
                return !!$stmt->fetch(PDO::FETCH_ASSOC);
            }
        public function CHECK_EMAIL($Insert_Email)
            {
                $EmailQuery = "SELECT * FROM users WHERE Email=:email;";
                $stmt = $this->PDO_CONNECTION->prepare($EmailQuery);
                $stmt->execute(array(':email' => $Insert_Email));
                return !!$stmt->fetch(PDO::FETCH_ASSOC);
            }
        public function REGISTER_ACCOUNT($Email, $Username, $Discord, $Password)
            {
                $param_password = password_hash($Password, PASSWORD_DEFAULT); // Creates a password hash

                $INSERT_ARRAY = array(
                    ':username' => $Username,
                    ':email' => $Email,
                    ':discord' => $Discord,
                    ':password' => $param_password
                );

                $Insert_Query= "INSERT INTO users (UserName, Email, Password, Discord) VALUES (:username, :email, :password, :discord)";
                $stmt = $this->PDO_CONNECTION->prepare($Insert_Query);
                if($stmt->execute($INSERT_ARRAY)){
                    $RETURN_VALUE = $this->PDO_CONNECTION->lastInsertId();
                }else{
                    $RETURN_VALUE = "ERROR";
                }

                return $RETURN_VALUE;
            }
        public function GET_USER_DATA_FOR_LOGIN($Email)
            {
                $Get_Data = "SELECT ID, Password FROM users WHERE Email=:email LIMIT 1;";
                $stmt = $this->PDO_CONNECTION->prepare($Get_Data);
                $stmt->execute(array(':email' => $Email));
                return $stmt->fetch(PDO::FETCH_ASSOC);
            }
        public function GetAllUserData($UserID)
            {
                $Get_Data = "SELECT * FROM users WHERE ID=:id LIMIT 1;";
                $stmt = $this->PDO_CONNECTION->prepare($Get_Data);
                $stmt->execute(array(':id' => $UserID));
                return $stmt->fetch(PDO::FETCH_ASSOC);
            }
        public function UpdateUserInfo($edit_id, $edit_email, $edit_username, $edit_discordTag)
            {
                $update_data = "UPDATE users SET `UserName` = '$edit_username', `Email` = '$edit_email', `Discord` = '$edit_discordTag' WHERE `ID` = $edit_id;";
                $stmt = $this->PDO_CONNECTION->prepare($update_data);
                if($stmt->execute()){
                    $RETURN_VALUE = true;
                }else{
                    $RETURN_VALUE = false;
                }
                return $RETURN_VALUE;
            }
        public function UpdateUserPass($edit_id, $user_id_Session, $edit_OldPass, $edit_NewPass)
            {
                $RETURN_MESSAGE = "";

                if($edit_id != $user_id_Session){
                    $RETURN_MESSAGE = "Something went wrong! Contact TheGamingBram on discord! Error Code: #105";
                }else{
                    $Get_OLDPASS_SQL = "SELECT Password FROM users WHERE ID=:id LIMIT 1;";
                    $stmt = $this->PDO_CONNECTION->prepare($Get_OLDPASS_SQL);
                    $stmt->execute(array(':id' => $edit_id));
                    $Get_OLDPASS_SQL_DATA = $stmt->fetch(PDO::FETCH_ASSOC);

                    if(empty($Get_OLDPASS_SQL_DATA['Password'])){
                        $RETURN_MESSAGE = "Something went wrong! Contact TheGamingBram on discord! Error Code: #106";
                    }else{
                        $DB_PASS = $Get_OLDPASS_SQL_DATA['Password'];

                        if(password_verify($edit_OldPass, $DB_PASS)){
                            $New_password = password_hash($edit_NewPass, PASSWORD_DEFAULT); // Creates a password hash
                            $update_data = "UPDATE users SET `Password` = '$New_password' WHERE `ID` = $edit_id;";
                            $stmt_pass = $this->PDO_CONNECTION->prepare($update_data);
                            if($stmt_pass->execute()){
                                $RETURN_MESSAGE = "Password Updated!";
                            }else{
                                $RETURN_MESSAGE = "Something went wrong! Contact TheGamingBram on discord! Error Code: #166";
                            }
                        }else{
                            $RETURN_MESSAGE = "Passwords doesn't match!";
                        }
                    }
                }

                return $RETURN_MESSAGE;
            }
        public function UPLOAD_PROFILEPIC($FileName, $edit_id)
            {
                $update_data = "UPDATE users SET `UserIcon` = '$FileName' WHERE `ID` = $edit_id;";
                $stmt = $this->PDO_CONNECTION->prepare($update_data);
                $stmt->execute();
            }
        public function GenerateUserTable()
            {
                $GetAllData_SQL = "SELECT * FROM users";
                $stmt = $this->PDO_CONNECTION->prepare($GetAllData_SQL);
                $stmt->execute();
                $GetAllData_OUT = $stmt->fetchAll(PDO::FETCH_ASSOC);
                $Generated_Data ="";
                foreach ($GetAllData_OUT as $UserData) {
                    $Generated_Data .= "<tr>";
                        $Generated_Data .= "<td>" . $UserData['ID'] . "</td>"; // UserID
                        $Generated_Data .= "<td>" . $UserData['UserName'] . "</td>"; // UserName
                        $Generated_Data .= "<td>" . $UserData['Email'] . "</td>"; // UserMail
                        $Generated_Data .= "<td>" . $UserData['Discord'] . "</td>"; // UserDiscordTag
                        if($UserData['Verified'] == 0){
                            $Generated_Data .= "<td><a style='color: #da3636;' href='?Verify=".$UserData['ID']."'>Not Verified!</a></td>"; // UserVerified
                        }elseif ($UserData['Verified'] == 1) {
                            $Generated_Data .= "<td style='color: green'>Verified!</td>"; // UserVerified
                        }else{
                            $Generated_Data .= "<td style='color: yellow'>Error</td>"; // UserVerified
                        }
                        // $Generated_Data .= "<td>" . "</td>"; // UserVerified

                    $Generated_Data .= "</tr>";
                }
                return $Generated_Data;
            }
        public function VerifyUser($usrID)
            {
                $update_data = "UPDATE users SET `Verified` = '1' WHERE `ID` = $usrID;";
                $stmt = $this->PDO_CONNECTION->prepare($update_data);
                $stmt->execute();
            }
    }
?>