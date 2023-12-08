<?php
  session_start();
  require("./Assets/DB/DB_Info_CONFIG.php");

  $DB_Connection = new connection;

  $PageName = "Projects";
  $Page="";

  if(!isset($_GET['Projectid'])){
    $Get_RecentData_SQL = "SELECT
    vnstudios.projects.ID,
    vnstudios.projects.Name,
    vnstudios.projects.PreviewImage,
    vnstudios.projects.Version,
    vnstudios.projects.Created_at,
    vnstudios.users.UserName
    From
    vnstudios.projects Inner Join
    vnstudios.users On vnstudios.projects.Creator = vnstudios.users.ID
    ORDER BY
    vnstudios.projects.Created_at DESC
    ";

    $RESPONSE_RecentData_SQL = $DB_Connection->select($Get_RecentData_SQL);

    $PREP_BLOCK = "";
    if(count($RESPONSE_RecentData_SQL) >= 1){
        $PREP_BLOCK = "";
        foreach ($RESPONSE_RecentData_SQL as $ROW_RecentData_SQL) {
        $PREP_BLOCK.="<div class='item'>";
            $PREP_BLOCK.="<a href='Projects.php?Projectid=".$ROW_RecentData_SQL['ID']."'>";
            if(empty($ROW_RecentData_SQL['PreviewImage'])){
            $PREP_BLOCK.="<img class='item-img' src='./Assets/IMG/ProjectFiles/Placeholder.png' alt='unsplash-OG44d93i-NJk' border='0'>";
            }else{
            $PREP_BLOCK.="<img class='item-img' src='./Assets/IMG/ProjectFiles/Thumbnails/".$ROW_RecentData_SQL['PreviewImage']."' alt='unsplash-OG44d93i-NJk' border='0'>";
            }
            $PREP_BLOCK.="</a>";
            $PREP_BLOCK.="<div class='item-title'>";
            $PREP_BLOCK.="<p>".$ROW_RecentData_SQL['Name']."</p>";
            $PREP_BLOCK.="<p>".$ROW_RecentData_SQL['Version']."</p>";
            $PREP_BLOCK.="</div>";
            $PREP_BLOCK.="<div class='item-title-After'>";
            $PREP_BLOCK.="<p>By ".$ROW_RecentData_SQL['UserName']."</p>";
            $PREP_BLOCK.="</div>";
            $UPLOAD_DATE = date("d M, Y", strtotime($ROW_RecentData_SQL['Created_at']));
            $PREP_BLOCK.="<p class='item-date'>Uploaded on ".$UPLOAD_DATE."</p>";
        $PREP_BLOCK.="</div>";
        }
    }  

    $TotalProjects = count($RESPONSE_RecentData_SQL);

    $Page='
        <div class="box">
            <div class="infobox">
                <p class="infobox-boldtext">
                    Projects
                </p>
                <p class="infobox-slimtext">
                    On this page you can find all our projects.
                </p>
                <div class="infobox-btnwrapper">
                    <a href="#Projects" class="NoDECO"><button class="infobox-explorebtn">Explore</button></a>
                    <!-- <button class="infobox-downloadbtn">Download</button> -->
                    <!-- <button class="infobox-createbtn">Create</button> -->
                </div>
            </div>
            <div class="display">
            <img class="display-PNG" src="./Assets/IMG/VnightStudioICON.png" alt="VNIGHT LOGO" border="0">
            </div>
        </div>
        <a name="Projects"></a>
        <div class="discover">
            <div class="discover-title">
                <p>Showing '.$TotalProjects.' Projects</p>
            </div>
            <div class="discover-items">
                '.$PREP_BLOCK.'
            </div>
        </div>
    ';

    $PageName = "Projects";
  }
  else{
    $Get_PROJECT_Data_SQL = "SELECT
        vnstudios.projects.Name,
        vnstudios.projects.Description,
        vnstudios.projects.Version,
        vnstudios.projects.PreviewImage,
        vnstudios.projects.Created_at,
        vnstudios.users.UserName,
        vnstudios.users.UserIcon,
        vnstudios.projects.Download,
        vnstudios.projects.ExtraLinks
    FROM
        vnstudios.projects Inner Join
        vnstudios.users On vnstudios.projects.Creator = vnstudios.users.ID
    WHERE
        vnstudios.projects.ID = ".$_GET['Projectid']."
    ";

    $PROJECT_DATA = $DB_Connection->select($Get_PROJECT_Data_SQL);
    $Page.= '<div class="box">';
        $Page.= '<div class="infobox">';
            $Page.= '<p class="infobox-boldtext">'.$PROJECT_DATA[0]['Name'].'</p>';
            $Page.= '<p class="infobox-slimtext">'.$PROJECT_DATA[0]['Description'].'</p>';
            $Page.= '<div class="infobox-btnwrapper">';
                if(!empty($PROJECT_DATA[0]['Download']) && !empty($PROJECT_DATA[0]['ExtraLinks'])){
                    $Page.= '<a class="NoDECO" href="./Assets/Downloads/'.$PROJECT_DATA[0]['Download'].'" download><button class="infobox-downloadbtn">Download</button></a>';
                    $Page.= "&nbsp;&nbsp;";
                    $Page.= '<a class="NoDECO" href="'.$PROJECT_DATA[0]['ExtraLinks'].'" download><button class="infobox-downloadbtn">Explore</button></a>';
                }
                else if(!empty($PROJECT_DATA[0]['Download'])){
                    $Page.= '<a class="NoDECO" href="./Assets/Downloads/'.$PROJECT_DATA[0]['Download'].'" download><button class="infobox-downloadbtn">Download</button></a>';
                }
                else if(!empty($PROJECT_DATA[0]['ExtraLinks'])){
                    $Page.= '<a class="NoDECO" href="'.$PROJECT_DATA[0]['ExtraLinks'].'" download><button class="infobox-downloadbtn">Explore</button></a>';
                }
            $Page.= '</div>';
        $Page.= '</div>';
        $Page.= '<div class="display">';
            if(empty($PROJECT_DATA[0]['PreviewImage'])){
                $Page.="<img class='display-PNG' src='./Assets/IMG/ProjectFiles/Placeholder.png' alt='VNIGHT' border='0'>";
            }else{
                $Page.="<img class='display-PNG' src='./Assets/IMG/ProjectFiles/Thumbnails/".$PROJECT_DATA[0]['PreviewImage']."' alt='".$PROJECT_DATA[0]['Name']."' border='0'>";
            }
            $Page.='<div class="infowrapper">';
                $Page.='<div class="info">';
                    $Page.='<img class="info-img" src="./Assets/IMG/ProfilePics/'.$PROJECT_DATA[0]['UserIcon'].'" alt="'.$PROJECT_DATA[0]['UserName'].'" border="0">';
                    $Page.="<div>";
                        $Page.="<p>By ".$PROJECT_DATA[0]['UserName']."</p>";
                        $UPLOAD_DATE = date("d M, Y", strtotime($PROJECT_DATA[0]['Created_at']));
                        $Page.="<p>Uploaded on $UPLOAD_DATE</p>";
                    $Page.="</div>";
                $Page.='</div>';
                $Page.='<div class="info2">';
                    $Page.='<p>Current Version</p>';
                    $Page.='<div class="iconwrapper">'.$PROJECT_DATA[0]['Version'].'</div>';
                $Page.='</div>';
            $Page.='</div>';
        $Page.= '</div>'; 
    $Page.= '</div>';
    
    $PageName = $PROJECT_DATA[0]['Name']." - ".$PROJECT_DATA[0]['Version'];
  }

  require("./Assets/HTML/Header.php");
  echo $Page;
  require("./Assets/HTML/Footer.php");
?>
    