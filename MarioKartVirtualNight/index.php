<?php
  session_start();
  require("./Assets/DB/DB_Info_CONFIG.php");

  $DB_Connection = new connection;
  
  $TrackCount = $DB_Connection->GetCountTracks();
  $PackInformation = $DB_Connection->GetLatestInformation();

  $PACK_Version = $PackInformation["Version"];
  $PACK_DownloadLOC = "./Pack_downloads/" . $PackInformation["LocalFile"];
  $PACK_ChangelogText = $PackInformation["Text"];

  

  require("./Assets/HTML/Header.php");
?>

    <div class="box">
      <div class="infobox">
        <p class="infobox-boldtext">
          Welcome to the Virtual Night!
        </p>
        <p class="infobox-slimtext">
        </p>
        <div class="infobox-btnwrapper">
          <a style="text-decoration: none;" download href="<?=$PACK_DownloadLOC?>"><button class="infobox-downloadbtn">Download Latest Version - <?=$PACK_Version?></button></a>
        </div>
      </div>
      <div class="display">
        <img class="displayIMGMain" src="./Assets/IMG/MKVNLOGO.png" alt="LOGO" border="0">
      </div>
    </div>

    <div class="started">
      <p class="started-boldtext">About Mario Kart Virtual Night</p>
      <p class="started-slimtext"></p>
      <div class="started-items">
        <div class="itemwrapper">
          <p><b><?=$TrackCount?> Tracks</b> <br>This pack has over <?=$TrackCount?> Original, New, Retro, Texture/Edit hacked Custom tracks to enjoy!</p>
        </div>
        <div class="itemwrapper">
          <p><b>DLC</b> <br>This pack has the ability to have more Music and character skins, Check the <a style="color: white" href="./DLC.php">DLC Page</a> for more info!</p>
        </div>
        <div class="itemwrapper">
          <p><b>Time trails</b> <br>After racing you can submit your track time to Time trail lederboard!</p>
        </div>
        <div class="itemwrapper">
          <p><b>Mission Mode</b> <br>Play new missions from collecting coins or drive trough gates, check the <a style="color: white" href="./Mission.php">Mission Mode Page</a> for more information</p>
        </div>
      </div>
      <p class="started-slimtext">Items</p>
      <div class="started-items">
        <div class="itemwrapper">
          <div class="started-items-item">
            <img src="./Assets/IMG/item_Fake.png" width="75">
          </div>
          <p><b>Fake Itembox</b> <br>The Fake Item Boxes resemble regular Item Boxes in their design, but the item acts as a hazard that flips vehicles over in a way similar to that caused by a Green Shell or a Red Shell.</p>
        </div>
        <div class="itemwrapper">
          <div class="started-items-item">
            <img src="./Assets/IMG/Item_Starcloud.png" width="75">
          </div>
          <p><b>Star Thunder Cloud</b> <br>The Star Thunder Cloud acts like the normal Thunder Cloud but gives you a Star instead of shrinking you down.</p>
        </div>
        <div class="itemwrapper">
          <div class="started-items-item">
            <img src="./Assets/IMG/Item_Superhorn.png" width="75">
          </div>
          <p><b>Super Horn</b> <br>The Super Horn is an item that debuts in Mario Kart 8, in Mario Kart Wii it more acts like the POW-Block</p>
        </div>
        <div class="itemwrapper">
          <div class="started-items-item">
            <img src="./Assets/IMG/Item_Wonder.png" width="75">
          </div>
          <p><b>Wonder Flower</b> <br>The Wonder Flower is an new item that debuts in Super Mario Wonder, In Mario Kart Wii it has the power to make the user larger like the Mega Mushroom</p>
        </div>
      </div>
    </div>

    <div class="started">
      <p class="started-boldtext">Changelogs - <?=$PACK_Version?></p>
      <div class="started-slimtext" style="color:white"><?=$PACK_ChangelogText?></div>
      <button style="width: 500px;" onclick="location.href='Changelogs.php'" class="discover-loadbtn">VIEW OLDER CHANGELOGS</button>
    </div>

    <div class="discover">
      <div class="discover-title">
        <p class="titlebold">Track Lists</p>
      </div>
      <button style="width: 500px;" onclick="location.href='Tracklist.php'" class="discover-loadbtn">View Tracklist Here!</button>
    </div>

    <div class="discover">
      <div class="discover-title">
        <p>DLC (Music)</p>
      </div>
      <div class="discover-items">
        <!-- <?=$PREP_BLOCK?> -->
      </div>
      <button onclick="location.href='DLC.php'" class="discover-loadbtn">VIEW MORE</button>
    </div>
<?php 
  require("./Assets/HTML/Footer.php");
?>