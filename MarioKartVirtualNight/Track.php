<?php
      session_start();
      require("./Assets/DB/DB_Info_CONFIG.php");
      $DB_Connection = new connection;

      if(empty($_GET)){
        header('Location: Tracklist.php');
        exit;
      }

      if(!isset($_GET['TrackID'])){
        header('Location: Tracklist.php');
        exit;
      }
      
      $TrackToShow = "";

      if($_GET['TrackID'] == "RAND"){
        $TrackToShow = $DB_Connection->RandomTrackID();
      }else{
        $TrackToShow = $_GET['TrackID'];
      }

      if($_SERVER["REQUEST_METHOD"] == "POST"){
        $format = '%u:%02u:%02u.%03u';
        $Time_SET = sprintf($format, 0, $_POST['t_0-minute'], $_POST['t_0-second'], $_POST['t_0-millisecond']);
        $DB_Connection->InsertTT($_POST['USR_ID'],$_POST['TRK_ID'],$_POST['Char'],$_POST['Veh'],$Time_SET);
        $TrackToShow = $_POST['TRK_ID'];
      }
      
      $TrackData = $DB_Connection->GetTrackData($TrackToShow);
      

      $Track_ID = $Track_Hex_ID = $Track_Name = $Track_Creator = $Track_Version = $Track_Slot_Type = $Track_SubTrackTo = $Track_Wiki_Link = $DLC_Music_Name = $DLC_Music_YT_EMBED = $Track_Tmus = "Error Finding Track";
      if(!empty($TrackData)){
        $Track_ID = $TrackData['ID'];
        $Track_Hex_ID = $TrackData['Track_Hex_ID'];
        $Track_Name = $DB_Connection->GenTrack_PREFIX($TrackData['Track_Type']) . " " . $TrackData['Track_Name'];
        $Track_Creator = $TrackData['Track_Creator'];
        $Track_Version = $TrackData['Track_version'];
        $Track_Slot_Type = $TrackData['Slot_Type'];
        $Track_SubTrackTo = $TrackData['SubTrackTo'];
        $Track_Wiki_Link = $TrackData['Wiki_Link'];
        $DLC_Music_Name = $TrackData['DLC_Music_Name'];
        $DLC_Music_YT_EMBED = $TrackData['DLC_Music_YT_EMBED'];
        $Track_Tmus = $TrackData['Tmus'];
      }

      require("./Assets/HTML/Header.php");
      
      if($Track_Slot_Type == 1){
        ?>
          <div class="box">
            <div class="infobox">
              <p class="infobox-boldtext">
                <?=$Track_Name?>
              </p>
            </div>
          </div>

          <p class="started-slimtext">Tracks with same slot</p>
          <div class="started-items">
            <?=$DB_Connection->GEN_Tracks_Same_Slot($Track_Hex_ID);?>
          </div>
        <?php
      }else{
        
        if(isset($_SESSION['LOGIN_VN_ID'])){
          $User_Verified = $DB_Connection->GET_Verified($_SESSION['LOGIN_VN_ID']);  
        }

        if($DLC_Music_Name == NULL And $DLC_Music_Name == NULL){
            $MUSIC_Return = $DB_Connection->GetMusicNameURL($Track_Tmus);

            $DLC_Music_Name = $MUSIC_Return['Music_Name'];
            $DLC_Music_YT_EMBED = $MUSIC_Return['Music_YT'];
        }

        ?>
          <head>
            <link href="https://cdn.datatables.net/v/dt/jq-3.7.0/dt-1.13.5/datatables.min.css" rel="stylesheet"/>
            <script src="https://cdn.datatables.net/v/dt/jq-3.7.0/dt-1.13.5/datatables.min.js"></script>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
            <script src=https://cdnjs.cloudflare.com/ajax/libs/selectize.js/0.12.6/js/standalone/selectize.min.js></script>
            <link rel="stylesheet" href="./Assets/CSS/selectize.dark.css" />
          </head>
          <div class="box">
            <div class="infobox">
              <p class="infobox-boldtext">
                <?=$Track_Name?>
              </p>
              <p class="infobox-slimtext">
                Version : <b><u><?=$Track_Version?></u></b> - by <b><u><?=$Track_Creator?></u></b>
              </p>
              <div class="infobox-btnwrapper">
                <a href="<?=$Track_Wiki_Link?>" class="NoDECO"><button class="infobox-explorebtn">Tockdom Wiki Page</button></a>
              </div>
            </div>
            <div class="display">
              <div class="info2">
                  Track Music preview.
              </div>
              <iframe height="auto" height="100%" class="display-PNG" src="https://www.youtube.com/embed/<?=$DLC_Music_YT_EMBED?>" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" ></iframe>
              <div class="infowrapper">
                <div class="info">
                  <?=$DLC_Music_Name?>
                </div>
              </div>
            </div>
          </div>
          <div class="auction">
            <div class="title">
              <p class="titlebold">Time Trial leaderboards</p>
              <?php 
                if(!isset($_SESSION['LOGIN_VN_ID'])){
                  ?>
                    <p style="color:red" class="titleslim">You need to login to submit Time Trail's</p>
                  <?php
                }else {
                  if($User_Verified != 1){ 
                    ?>
                      <p style="color:red" class="titleslim">Your Account needs to be verified by Staff, <br> Contact Bram to get your account verified!</p>
                    <?php
                  }
                }
              ?>
            </div>
            <?php 
              if(isset($_SESSION['LOGIN_VN_ID'])){
                if($User_Verified == 1){
                  ?> 
                    <div style="color: white; font: 1em Poppins; text-align: center;">
                      <form id="SUBMIT_TT" method="post">
                        <input type="hidden" name="USR_ID" value="<?=$_SESSION['LOGIN_VN_ID']?>">
                        <input type="hidden" name="TRK_ID" value="<?=$Track_ID?>">
                        <label for="Char">Choose the Character:</label>
                        <select required style="background-color: transparent;" name="Char" id="Char" placeholder="Select a Character...">
                          <option value="">Type a name...</option>
                          <?=$DB_Connection->GenerateTTChar();?>
                        </select>
                        <br>
                        <label for="Veh">Choose the Vehicle:</label>
                        <select required style="background-color: transparent;" name="Veh" id="Veh" placeholder="Select a Vehicle...">
                          <option value="">Type a Vehicle...</option>
                          <?=$DB_Connection->GenerateTTVeh();?>
                        </select>
                        <br>
                        <label for="">Time:</label>
                        <div class="TT_time_Container">
                            <div class="x-input-runtime-unit" aria-hidden="true">TIME : </div>
                            <input type="number" required   name="t_0-minute"       min="0" max="60" maxlength="2" autocomplete="off" class="x-input-runtime" aria-label="Time minutes" value="">
                            <div class="x-input-runtime-unit" aria-hidden="true">m</div>
                            <input type="number" required   name="t_0-second"       min="0" max="60" maxlength="2" autocomplete="off" class="x-input-runtime" aria-label="Time seconds" value="">
                            <div class="x-input-runtime-unit" aria-hidden="true">s</div>
                            <input type="number" required   name="t_0-millisecond"  min="0" max="999" maxlength="3" autocomplete="off" class="x-input-runtime" aria-label="Time milliseconds" value="">
                            <div class="x-input-runtime-unit" aria-hidden="true">ms</div>
                        </div>
                        <br>
                        <input type="submit" value="Submit Time Trail" style="width: 500px;" class="discover-loadbtn"/>
                      </form>
                    </div>
                  <?php
                }
              }
            ?>
            
            <div style="color: white; font: 1em Poppins; text-align: center;">
              <table id="example" class="row-border hover" style="width:100%;">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Username</th>
                        <th>Time</th>
                        <th>Combo Used</th>
                        <th>Verified</th>
                    </tr>
                </thead>
                <tbody>
                    <?=$DB_Connection->GET_TTs($Track_ID);?>
                </tbody>
              </table>
            </div>
          </div>
          <br>
          <br>
          <br>
          <?php
            if($Track_Slot_Type == 2){
              ?>
                <p class="started-slimtext">Tracks with same slot</p>
                <div class="started-items">
                  <?=$DB_Connection->GEN_Tracks_Same_Slot($Track_SubTrackTo);?>
                </div>
              <?php
            }
          ?>
          <script>
          $(document).ready(function() {
            $("#Char").selectize({
              create: false,
              persist: false,
            });
            $("#Veh").selectize({
              create: false,
              persist: false,
            });


            new DataTable('#example', {
              "paging": false,
              "info": false,
              "searching": false,
              "order": [[ 2, 'asc']],
              columnDefs: [
                {
                  target: [0],
                  visible: false,
                  searchable: true
                },
                {
                  target: [2],
                  type: "time"
                }
              ],
              "language": { "emptyTable": "No Records Found!" }
            });
          });
          </script>
        <?php
      }
?>
<?php
      require("./Assets/HTML/Footer.php");
?>