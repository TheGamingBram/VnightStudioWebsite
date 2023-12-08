<?php
  session_start();
  require("./Assets/DB/DB_Info_CONFIG.php");

  $DB_Connection = new connection;

  $PageName = "About Us";

    $Get_RecentData_BRAM_SQL = "SELECT
    projects.ID,
    projects.Name,
    projects.PreviewImage,
    projects.Version,
    projects.Created_at,
    users.UserName
    From
    projects Inner Join
    users On projects.Creator = users.ID
    WHERE projects.Creator = 2 OR projects.Creator = 1
    ORDER BY
    projects.Created_at DESC
    LIMIT 8
    ";

    $Get_RecentData_OBI_SQL = "SELECT
    projects.ID,
    projects.Name,
    projects.PreviewImage,
    projects.Version,
    projects.Created_at,
    users.UserName
    From
    projects Inner Join
    users On projects.Creator = users.ID
    WHERE projects.Creator = 3 OR projects.Creator = 1
    ORDER BY
    projects.Created_at DESC
    LIMIT 8
    ";

    $RESPONSE_RecentData_Bram_SQL = $DB_Connection->select($Get_RecentData_BRAM_SQL);
    $RESPONSE_RecentData_OBI_SQL = $DB_Connection->select($Get_RecentData_OBI_SQL);

    $PREP_BLOCK_Bram = "";
    $PREP_BLOCK_OBI = "";

    $TotalProjects_Bram = count($RESPONSE_RecentData_Bram_SQL);

    if(count($RESPONSE_RecentData_Bram_SQL) >= 1){
        foreach ($RESPONSE_RecentData_Bram_SQL as $ROW_RecentData_SQL) {
        $PREP_BLOCK_Bram.="<div class='item'>";
            $PREP_BLOCK_Bram.="<a href='Projects.php?Projectid=".$ROW_RecentData_SQL['ID']."'>";
            if(empty($ROW_RecentData_SQL['PreviewImage'])){
            $PREP_BLOCK_Bram.="<img class='item-img' src='./Assets/IMG/ProjectFiles/Placeholder.png' alt='unsplash-OG44d93i-NJk' border='0'>";
            }else{
            $PREP_BLOCK_Bram.="<img class='item-img' src='./Assets/IMG/ProjectFiles/Thumbnails/".$ROW_RecentData_SQL['PreviewImage']."' alt='unsplash-OG44d93i-NJk' border='0'>";
            }
            $PREP_BLOCK_Bram.="</a>";
            $PREP_BLOCK_Bram.="<div class='item-title'>";
            $PREP_BLOCK_Bram.="<p>".$ROW_RecentData_SQL['Name']."</p>";
            $PREP_BLOCK_Bram.="<p>".$ROW_RecentData_SQL['Version']."</p>";
            $PREP_BLOCK_Bram.="</div>";
            $PREP_BLOCK_Bram.="<div class='item-title-After'>";
            $PREP_BLOCK_Bram.="<p>By ".$ROW_RecentData_SQL['UserName']."</p>";
            $PREP_BLOCK_Bram.="</div>";
            $UPLOAD_DATE = date("d M, Y", strtotime($ROW_RecentData_SQL['Created_at']));
            $PREP_BLOCK_Bram.="<p class='item-date'>Uploaded on ".$UPLOAD_DATE."</p>";
        $PREP_BLOCK_Bram.="</div>";
        }
    } 

    $TotalProjects_OBI = count($RESPONSE_RecentData_OBI_SQL);

    if(count($RESPONSE_RecentData_OBI_SQL) >= 1){
        foreach ($RESPONSE_RecentData_OBI_SQL as $ROW_RecentData_SQL) {
        $PREP_BLOCK_OBI.="<div class='item'>";
            $PREP_BLOCK_OBI.="<a href='Projects.php?Projectid=".$ROW_RecentData_SQL['ID']."'>";
            if(empty($ROW_RecentData_SQL['PreviewImage'])){
            $PREP_BLOCK_OBI.="<img class='item-img' src='./Assets/IMG/ProjectFiles/Placeholder.png' alt='unsplash-OG44d93i-NJk' border='0'>";
            }else{
            $PREP_BLOCK_OBI.="<img class='item-img' src='./Assets/IMG/ProjectFiles/Thumbnails/".$ROW_RecentData_SQL['PreviewImage']."' alt='unsplash-OG44d93i-NJk' border='0'>";
            }
            $PREP_BLOCK_OBI.="</a>";
            $PREP_BLOCK_OBI.="<div class='item-title'>";
            $PREP_BLOCK_OBI.="<p>".$ROW_RecentData_SQL['Name']."</p>";
            $PREP_BLOCK_OBI.="<p>".$ROW_RecentData_SQL['Version']."</p>";
            $PREP_BLOCK_OBI.="</div>";
            $PREP_BLOCK_OBI.="<div class='item-title-After'>";
            $PREP_BLOCK_OBI.="<p>By ".$ROW_RecentData_SQL['UserName']."</p>";
            $PREP_BLOCK_OBI.="</div>";
            $UPLOAD_DATE = date("d M, Y", strtotime($ROW_RecentData_SQL['Created_at']));
            $PREP_BLOCK_OBI.="<p class='item-date'>Uploaded on ".$UPLOAD_DATE."</p>";
        $PREP_BLOCK_OBI.="</div>";
        }
    }  

  require("./Assets/HTML/Header.php");
  ?>

    <div class="box">
      <div class="infobox">
        <p class="infobox-boldtext">
          About Us!
        </p>
        <p class="infobox-slimtext">
          Virtual Night Studio's (aka Vnight studio's) is a multi genre game and dev community. Created by 2 people, Bram (aka TheGamingBram) and Obi (aka Obi1.)
        </p>
        <div class="infobox-btnwrapper">
          <a href="#Bram" class="NoDECO"><button class="infobox-explorebtn">About Bram</button></a>
          &nbsp;&nbsp;
          <a href="#Obi" class="NoDECO"><button class="infobox-explorebtn">About Obi</button></a>
        </div>
      </div>
      <div class="display">
        <img class="display-PNG" src="./Assets/IMG/VnightStudioICON.png" alt="VNIGHT LOGO" border="0">
      </div>
    </div>

    <div class="started">
      <p class="started-boldtext">About Virtual Night Studio's</p>
      <p class="started-slimtext"></p>
      <div class="started-items-5">
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
        <div class="itemwrapper">
          <div class="started-items-item" style="color: white;">
            25-June-2021
          </div>
          <p><b>Creation date</b> <br>This is the date Bram and Obi created Crow's nest X TGE (Aka Virtual Night Studio's)</p>
        </div>
      </div>
    </div>
  
    <a name="Bram"></a>
    <div class="box">
      <div class="infobox">
        <p class="infobox-boldtext">
          About Bram!
        </p>
        <p class="infobox-slimtext">
          Heya im Bram! 21 years old and live in the Netherlands. Currently studying software development.
        </p>
      </div>
      <div class="display">
        <img class="display-PNG" src="./Assets/IMG/VnightStudioICON.png" alt="VNIGHT LOGO" border="0">
      </div>
    </div>

    <div class="discover">
      <div class="discover-title">
        <p>Bram's recent projects - Showing <?=$TotalProjects_Bram?> Projects</p>
      </div>
      <div class="discover-items">
        <?=$PREP_BLOCK_Bram?>
      </div>
      <button onclick="location.href='Projects.php'" class="discover-loadbtn">VIEW MORE</button>
    </div>

    <a name="Obi"></a>
    <div class="box">
      <div class="infobox">
        <p class="infobox-boldtext">
          About Obi!
        </p>
        <p class="infobox-slimtext">
          
        </p>
      </div>
      <div class="display">
        <img class="display-PNG" src="./Assets/IMG/VnightStudioICON.png" alt="VNIGHT LOGO" border="0">
      </div>
    </div>

    <div class="discover">
      <div class="discover-title">
        <p>Obi's recent projects - Showing <?=$TotalProjects_OBI?> Projects</p>
      </div>
      <div class="discover-items">
        <?=$PREP_BLOCK_OBI?>
      </div>
      <button onclick="location.href='Projects.php'" class="discover-loadbtn">VIEW MORE</button>
    </div>

  <?php
  require("./Assets/HTML/Footer.php");
?>
    