<?php
  session_start();

  require("./Assets/DB/DB_Info_CONFIG.php");

  $DB_Connection = new connection;

  $Get_TopProjects_SQL = "SELECT
  vnstudios.projects.ID,
  vnstudios.projects.Name,
  vnstudios.projects.PreviewImage,
  vnstudios.projects.Version,
  vnstudios.projects.Created_at,
  vnstudios.users.UserName
From
  vnstudios.projects Inner Join
  vnstudios.users On vnstudios.projects.Creator = vnstudios.users.ID
WHERE
  vnstudios.projects.ID IN (1,2,29,30)
ORDER BY
  vnstudios.projects.Created_at DESC
  ";

  $RESPONSE_TopProjects_SQL = $DB_Connection->select($Get_TopProjects_SQL);
  $PREP_TOP_BLOCK = "";
  if(count($RESPONSE_TopProjects_SQL) >= 4){
    $PREP_BLOCK = "";
    foreach ($RESPONSE_TopProjects_SQL as $ROW_TOPData_SQL) {
      $PREP_TOP_BLOCK.="<div class='item'>";
        $PREP_TOP_BLOCK.="<a href='Projects.php?Projectid=".$ROW_TOPData_SQL['ID']."'>";
        if(empty($ROW_TOPData_SQL['PreviewImage'])){
          $PREP_TOP_BLOCK.="<img class='item-img' src='./Assets/IMG/ProjectFiles/Placeholder.png' border='0'>";
        }else{
          $PREP_TOP_BLOCK.="<img class='item-img' src='./Assets/IMG/ProjectFiles/Thumbnails/".$ROW_TOPData_SQL['PreviewImage']."'  border='0'>";
        }
        $PREP_TOP_BLOCK.="</a>";
        $PREP_TOP_BLOCK.="<div class='item-title'>";
          $PREP_TOP_BLOCK.="<p>".$ROW_TOPData_SQL['Name']."</p>";
          $PREP_TOP_BLOCK.="<p>".$ROW_TOPData_SQL['Version']."</p>";
        $PREP_TOP_BLOCK.="</div>";
        $PREP_TOP_BLOCK.="<div class='item-title-After'>";
          $PREP_TOP_BLOCK.="<p>By ".$ROW_TOPData_SQL['UserName']."</p>";
        $PREP_TOP_BLOCK.="</div>";
        $UPLOAD_DATE = date("d M, Y", strtotime($ROW_TOPData_SQL['Created_at']));
        $PREP_TOP_BLOCK.="<p class='item-date'>Uploaded on ".$UPLOAD_DATE."</p>";
      $PREP_TOP_BLOCK.="</div>";
    }
  }


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
LIMIT 8
  ";

  $RESPONSE_RecentData_SQL = $DB_Connection->select($Get_RecentData_SQL);

  $PREP_BLOCK = "";
  if(count($RESPONSE_RecentData_SQL) >= 4){
    $PREP_BLOCK = "";
    foreach ($RESPONSE_RecentData_SQL as $ROW_RecentData_SQL) {
      $PREP_BLOCK.="<div class='item'>";
        $PREP_BLOCK.="<a href='Projects.php?Projectid=".$ROW_RecentData_SQL['ID']."'>";
        if(empty($ROW_RecentData_SQL['PreviewImage'])){
          $PREP_BLOCK.="<img class='item-img' src='./Assets/IMG/ProjectFiles/Placeholder.png' border='0'>";
        }else{
          $PREP_BLOCK.="<img class='item-img' src='./Assets/IMG/ProjectFiles/Thumbnails/".$ROW_RecentData_SQL['PreviewImage']."' border='0'>";
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
  $PageName = "Home";
  require("./Assets/HTML/Header.php");
?>

    <div class="box">
      <div class="infobox">
        <p class="infobox-boldtext">
          Welcome!
        </p>
        <p class="infobox-slimtext">
          Virtual Night Studio's (aka Vnight studio's) is a multi genre game and dev community.
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

    <div class="started">
      <p class="started-boldtext">About Virtual Night Studio's</p>
      <p class="started-slimtext"></p>
      <div class="started-items">
        <div class="itemwrapper">
          <div class="started-items-item">
            <img src="./Assets/IMG/Languages.png" width="100">
          </div>
          <p><b>Multilingual</b> <br>The current Languages are: English, Swedish and Dutch.</p>
        </div>
        <div class="itemwrapper">
          <div class="started-items-item">
            <img src="./Assets/IMG/Programming.png" width="100">
          </div>
          <p><b>Programming</b> <br>At the moment we know these programming Languages: PHP, HTML5, CSS, Javascript, C# and Batch</p>
        </div>
        <div class="itemwrapper">
          <div class="started-items-item">
            <img src="./Assets/IMG/Pencil.png" width="100">
          </div>
          <p><b>Game Modding</b> <br>At this moment we mod these games: ChilloutVR, Mario Kart Wii and Mario Kart 8 Deluxe</p>
        </div>
        <div class="itemwrapper">
          <div class="started-items-item">
            <img src="./Assets/IMG//Animation.png" width="100">
          </div>
          <p><b>Modeling, Texturing and Animation</b> <br>As the title says we do: Modeling, Texturing and Animations in the open source tool Blender and the Unity Engine</p>
        </div>
      </div>
    </div>

    <div class="auction">
      <div class="title">
        <p class="titlebold">Top Projects</p>
      </div>
      <div class="item-PNG">
        <?=$PREP_TOP_BLOCK?>
      </div>
    </div>

    <a name="Projects"></a>
    <div class="discover">
      <div class="discover-title">
        <p>Recent projects</p>
      </div>
      <div class="discover-items">
        <?=$PREP_BLOCK?>
      </div>
      <button onclick="location.href='Projects.php'" class="discover-loadbtn">VIEW MORE</button>
    </div>
<?php 
  require("./Assets/HTML/Footer.php");
?>