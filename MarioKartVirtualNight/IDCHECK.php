<?php
  session_start();
  require("./Assets/DB/DB_Info_CONFIG.php");

  $DB_Connection = new connection;
  require("./Assets/HTML/Header.php");
?>

<div class="box">
      <div class="infobox">
        <p class="infobox-boldtext">
          LE-DEF
        </p>
        <p class="infobox-slimtext">
         On This Page The Le-DEF code is generated.
        </p>
        <div class="infobox-btnwrapper">
          
        </div>
      </div>
    </div>

    <div class="started">
        <pre id="TrackArea" style=" background-color: rgba(0, 0, 0, 0.322); color: whitesmoke; border: 1px rgb(66, 66, 66) solid;">
<?=$DB_Connection->CHECKID();?>
        </pre>
    </div>

<?php
    require("./Assets/HTML/Footer.php");
?>