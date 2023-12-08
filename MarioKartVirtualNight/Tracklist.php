<?php
      session_start();
      require("./Assets/DB/DB_Info_CONFIG.php");

      $DB_Connection = new connection;

      $Tracks = $DB_Connection->GenTrackList();
      // $DB_Connection->prettyprint($Tracks);

      require("./Assets/HTML/Header.php");
?>
<head>
  <link href="https://cdn.datatables.net/v/dt/jq-3.7.0/dt-1.13.5/datatables.min.css" rel="stylesheet"/>
  <script src="https://cdn.datatables.net/v/dt/jq-3.7.0/dt-1.13.5/datatables.min.js"></script>
</head>
    <div class="box">
      <div class="infobox">
        <p class="infobox-boldtext">
          Tracklist
        </p>
        <p class="infobox-slimtext">
          Here you can find all tracks that are in the pack, Click on the track to go to their own track page! <hr>
        </p>
        <p class="infobox-slimtext">
          Or you could click on this button to load into a random track!
        </p>
        <div class="infobox-btnwrapper">
          <a style="text-decoration: none;" href="track.php?TrackID=RAND"><button class="infobox-explorebtn">Random Track</button></a>
        </div>
      </div>
      <div class="display">
        <img class="displayIMG_NWS" src="./Assets/IMG/Minimap.png" width="300" alt="LOGO" border="0">
      </div>
    </div>

    <div class="auction">
      <div class="title">
        <p class="titlebold">Tracks</p>
      </div>
      <div style="color: white; font: 1em Poppins; text-align: center;">
        <table id="example" class="row-border hover" style="width:100%;">
          <thead>
              <tr>
                  <th>Track SortID</th>
                  <th>Track Name</th>
                  <th>Track Version</th>
                  <th>track Creator</th>
              </tr>
          </thead>
          <tbody>
              <?=$Tracks?>
          </tbody>
        </table>
      </div>
    </div>
    <script>
      new DataTable('#example', {
        "ordering": false,
        "paging": false,
        "info": false,
        columnDefs: [
          {
            target: [0],
            visible: false,
            searchable: true
          }
        ]

      });
    </script>
<?php
      require("./Assets/HTML/Footer.php");
?>