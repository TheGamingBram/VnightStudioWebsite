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

        public function GetCountTracks()
            {
                $Get_Data = "SELECT COUNT(Id) FROM mkvn_tracks WHERE Slot_Type = '0' OR Slot_Type = '2'";
                $stmt = $this->PDO_CONNECTION->prepare($Get_Data);
                $stmt->execute();
                $out = $stmt->fetch(PDO::FETCH_ASSOC);
                return $out['COUNT(Id)'];
            }

        public function GetLatestInformation()
            {
                $Get_Data = "Select
                    mkvn_versions.ID,
                    mkvn_versions.Version,
                    mkvn_versions.LocalFile,
                    mkvn_changelogs.Text
                From
                    mkvn_changelogs Inner Join
                    mkvn_versions On mkvn_versions.ChangelogID = mkvn_changelogs.id
                Order By
                    mkvn_versions.ID Desc
                Limit 1";
                $stmt = $this->PDO_CONNECTION->prepare($Get_Data);
                $stmt->execute();
                return $stmt->fetch(PDO::FETCH_ASSOC);
            }
        public function GenChangelogPage(){
            $Get_Data = "Select
                    mkvn_versions.ID,
                    mkvn_versions.Version,
                    mkvn_versions.LocalFile,
                    mkvn_changelogs.Text
                From
                    mkvn_changelogs Inner Join
                    mkvn_versions On mkvn_versions.ChangelogID = mkvn_changelogs.id
                Order By
                    mkvn_versions.ID Desc";
            $stmt = $this->PDO_CONNECTION->prepare($Get_Data);
            $stmt->execute();
            $stmtOut = $stmt->fetchAll(PDO::FETCH_ASSOC);

            $ChangeLogSite = "";
            foreach ($stmtOut as $Row) {
                $ChangeLogSite .= "<div class='box'>";
                    $ChangeLogSite .= "<div class='infobox'>";
                        $ChangeLogSite .= "<p class='infobox-boldtext'>";
                            $ChangeLogSite .= "Changelog -" . $Row['Version'];
                        $ChangeLogSite .= "</p>";
                        $ChangeLogSite .= "<p class='infobox-slimtext'>";
                            $ChangeLogSite .= $Row['Text'];
                        $ChangeLogSite .= "</p>";
                        if(!empty($Row['LocalFile'])){
                            $ChangeLogSite .= "<div class='infobox-btnwrapper'>";
                                $ChangeLogSite .= "<a style='text-decoration: none;' download href='".$Row['LocalFile']."'>";
                                    $ChangeLogSite.= "<button class='infobox-downloadbtn'>";
                                        $ChangeLogSite.= "Download -" . $Row['Version'];
                                    $ChangeLogSite.= "</button>";
                                $ChangeLogSite .= "</a>";
                            $ChangeLogSite .= "</div>";
                        }
                    $ChangeLogSite .= "</div>";
                $ChangeLogSite .= "</div>";
                $ChangeLogSite .= "<hr class='infobox' />";
            }
            return $ChangeLogSite;
        }

        public function GenTrackList(){
            $Get_Data = "SELECT * FROM mkvn_tracks WHERE Slot_Type = '0' OR Slot_Type = '1' ORDER BY `TrackSort` ASC";
            $stmt = $this->PDO_CONNECTION->prepare($Get_Data);
            $stmt->execute();
            $stmtOut = $stmt->fetchAll(PDO::FETCH_ASSOC);

            $DEF_IconPos = 128;
            $DataForList = "";

            foreach ($stmtOut as $Track){
                $trackName = "<a style='color:#ffffff; text-decoration: none;' href='track.php?TrackID=".$Track['ID']."'>". $this->GenTrack_PREFIX($Track['Track_Type']) ." ". $Track['Track_Name'] . "</a>";

                $DataForList .= "<tr>";
                    $DataForList .= "<td>".$Track['TrackSort']."</td>";
                    $DataForList .= "<td>".$trackName."</td>";
                    $DataForList .= "<td>".$Track['Track_version']."</td>";
                    $DataForList .= "<td>".$Track['Track_Creator']."</td>";
                $DataForList .= "</tr>";
            }
            return $DataForList;
        }
        public function GenTrack_PREFIX($PREFIX){
            $value = "";

            if($PREFIX == "SNES" or $PREFIX == "SNES Beta"){
                $value = "<b style='color:#efffff'>SNES</b>";
            }elseif ($PREFIX == "N64") {
                $value = "<b style='color:#e46c74'>N64</b>";
            }elseif ($PREFIX == "GBA") {
                $value = "<b style='color:#ee0c10'>GBA</b>";
            }elseif ($PREFIX == "GP") {
                $value = "<b style='color:#e65118'>GP</b>";
            }elseif ($PREFIX == "GCN") {
                $value = "<b style='color:#fffd1e'>GCN</b>";
            }elseif ($PREFIX == "DS" or $PREFIX == "DS Beta") {
                $value = "<b style='color:#0eb00a'>DS</b>";
            }elseif ($PREFIX == "Wii") {
                $value = "<b style='color:#75b5f6'>Wii</b>";
            }elseif ($PREFIX == "3DS") {
                $value = "<b style='color:#ffa61f'>3DS</b>";
            }elseif ($PREFIX == "GP DX") {
                $value = "<b style='color:#ff760e'>GP DX</b>";
            }elseif ($PREFIX == "Wii U") {
                $value = "<b style='color:#1170ec'>Wii U</b>";
            }elseif ($PREFIX == "Switch") {
                $value = "<b style='color:#e65118'>Switch</b>";
            }elseif ($PREFIX == "Tour") {
                $value = "<b style='color:#e65118'>Tour</b>";
            }elseif ($PREFIX == "RMX") {
                $value = "<b style='color:#e65118'>RMX</b>";
            }

            return $value;
        }

        public function Generate_LeDef()
        {
            $Generate = NULL;
            $TrackQuery = "SELECT * FROM mkvn_tracks ORDER BY `TrackSort` ASC";
            $stmt = $this->PDO_CONNECTION->query($TrackQuery);
            $TrackList = $stmt->fetchAll(PDO::FETCH_ASSOC);

            $Br = "<br>";
            $Generate = '#--- Start Generation' . $Br;
            $Generate.= $Br;
                // $Generate.= print_r($TrackList[0]);

                foreach ($TrackList as $value) {

                    $Generated_name = $this->Generate_Name($value['Track_Name'], $value['Track_Type'], $value['Track_Creator'], $value['NewTrack']);
                    $Generated_xname = $this->Generate_XName($value['Track_Name'], $value['Track_Type'], $value['Track_Creator'], $value['NewTrack']);
                    $Generate_Flag = '"' . $this->Generate_Flag($value['Track_Type'], $value['Slot_Type'], $value['NewTrack']) . '"';

                    $Generate.= "SLOT " . $value['Track_DEC_ID'] . $Br;
                    $Generate.= "TRACK vs" . $value['TrackSort'] . " vs " . $value['Tprop'] . " " . $value['Tmus'] . " " . $Generate_Flag . $Br;
                    $Generate.= "   file    " . '"'.$value['Local_File'].'"' . $Br;
                    $Generate.= "   name    " . '"'.$Generated_name.'"' . $Br;
                    $Generate.= "   xname    " . '"'.$Generated_xname.'"' . $Br;
                    $Generate.= $Br;
                }
            $Generate.= $Br;
            $Generate .= '#--- End Generation' . $Br;


            return $Generate;
        }
        public function Generate_LeDef_Small()
        {
            $Generate = NULL;
            $TrackQuery = "SELECT * FROM mkvn_tracks ORDER BY `TrackSort` ASC";
            $stmt = $this->PDO_CONNECTION->query($TrackQuery);
            $TrackList = $stmt->fetchAll(PDO::FETCH_ASSOC);

            $Br = "<br>";
            $Generate = '#--- Start Generation' . $Br;
            $Generate.= $Br;
                // $Generate.= print_r($TrackList[0]);
                $SCORE = 1;
                foreach ($TrackList as $value) {
                    if($value['Slot_Type'] != 2){
                        if($SCORE == 1){ $Generate.= "APPEND-VS  "; }
                    
                        $Generate.= "vs" . $value['TrackSort'] . "  ";
                        if($SCORE == 4) { $Generate.=$Br; $SCORE = 1;}else { $SCORE++; }
                    }
                }
            $Generate.= $Br;
            $Generate .= '#--- End Generation' . $Br;


            return $Generate;
        }
        public function Generate_Name($Track_Name, $Track_Type, $Track_Creator, $Track_NEW){
            $Generated_name = "";

            if($Track_Type == "SNES" or $Track_Type == "SNES Beta"){
                $Generated_name .= "&#92;&#92;c{white}&#92;&#92;u{FF33,FF2E,FF25,FF33}&#92;&#92;c{off} ";
            }elseif ($Track_Type == "N64") {
                $Generated_name .= "&#92;&#92;c{Red1}&#92;&#92;u{FF2E,FF16,FF14}&#92;&#92;c{off} ";
            }elseif ($Track_Type == "GBA") {
                $Generated_name .= "&#92;&#92;c{Red4}&#92;&#92;u{FF27,FF22,FF21}&#92;&#92;c{off} ";
            }elseif ($Track_Type == "GP") {
                $Generated_name .= "&#92;&#92;c{yor4}&#92;&#92;u{FF27,FF30}&#92;&#92;c{off} ";
            }elseif ($Track_Type == "GCN") {
                $Generated_name .= "&#92;&#92;c{yellow}&#92;&#92;u{FF27,FF23,FF2E}&#92;&#92;c{off} ";
            }elseif ($Track_Type == "DS" or $Track_Type == "DS Beta") {
                $Generated_name .= "&#92;&#92;c{green}&#92;&#92;u{FF24,FF33}&#92;&#92;c{off} ";
            }elseif ($Track_Type == "Wii") {
                $Generated_name .= "&#92;&#92;c{BLUE1}&#92;&#92;u{FF37,FF29,FF29}&#92;&#92;c{off} ";
            }elseif ($Track_Type == "3DS") {
                $Generated_name .= "&#92;&#92;c{yor3}&#92;&#92;u{FF13,FF24,FF33}&#92;&#92;c{off} ";
            }elseif ($Track_Type == "GP DX") {
                $Generated_name .= "&#92;&#92;c{yor4}&#92;&#92;u{FF27,FF30,FF24,FF38}&#92;&#92;c{off} ";
            }elseif ($Track_Type == "Wii U") {
                $Generated_name .= "&#92;&#92;c{BLUE2}&#92;&#92;u{FF37,FF29,FF29,FF35}&#92;&#92;c{off} ";
            }elseif ($Track_Type == "Switch") {
                $Generated_name .= "&#92;&#92;c{YOR5}&#92;&#92;u{FF33,FF37}&#92;&#92;c{off} ";
            }elseif ($Track_Type == "Tour") {
                $Generated_name .= "&#92;&#92;c{YOR5}&#92;&#92;u{FF34,FF2F,FF35,FF32}&#92;&#92;c{off} ";
            }elseif ($Track_Type == "RMX") {
                $Generated_name .= "&#92;&#92;c{YOR5}&#92;&#92;u{FF32,FF2D,FF38}&#92;&#92;c{off} ";
            }

            $Generated_name .= $Track_Name;

            if($Track_NEW == "1"){
                $Generated_name .= " &#92;&#92;c{RED}&#92;&#92;u{FF2E,FF25,FF37}&#92;&#92;c{off}";
            }elseif ($Track_NEW == "2") {
                $Generated_name .= " &#92;&#92;c{green}&#92;&#92;u{FF35,FF30,FF24,FF21,FF34,FF25}&#92;&#92;c{off}";
            }

            $Generated_name .= "&#92;n" . $Track_Creator;

            return $Generated_name;
        }
        public function Generate_XName($Track_Name, $Track_Type, $Track_Creator, $Track_NEW){
            $Generated_name = "";

            if($Track_Type == "SNES" or $Track_Type == "SNES Beta"){
                $Generated_name .= "&#92;&#92;c{white}&#92;&#92;u{FF33,FF2E,FF25,FF33}&#92;&#92;c{off} ";
            }elseif ($Track_Type == "N64") {
                $Generated_name .= "&#92;&#92;c{Red1}&#92;&#92;u{FF2E,FF16,FF14}&#92;&#92;c{off} ";
            }elseif ($Track_Type == "GBA") {
                $Generated_name .= "&#92;&#92;c{Red4}&#92;&#92;u{FF27,FF22,FF21}&#92;&#92;c{off} ";
            }elseif ($Track_Type == "GP") {
                $Generated_name .= "&#92;&#92;c{yor4}&#92;&#92;u{FF27,FF30}&#92;&#92;c{off} ";
            }elseif ($Track_Type == "GCN") {
                $Generated_name .= "&#92;&#92;c{yellow}&#92;&#92;u{FF27,FF23,FF2E}&#92;&#92;c{off} ";
            }elseif ($Track_Type == "DS" or $Track_Type == "DS Beta") {
                $Generated_name .= "&#92;&#92;c{green}&#92;&#92;u{FF24,FF33}&#92;&#92;c{off} ";
            }elseif ($Track_Type == "Wii") {
                $Generated_name .= "&#92;&#92;c{BLUE1}&#92;&#92;u{FF37,FF29,FF29}&#92;&#92;c{off} ";
            }elseif ($Track_Type == "3DS") {
                $Generated_name .= "&#92;&#92;c{yor3}&#92;&#92;u{FF13,FF24,FF33}&#92;&#92;c{off} ";
            }elseif ($Track_Type == "GP DX") {
                $Generated_name .= "&#92;&#92;c{yor4}&#92;&#92;u{FF27,FF30,FF24,FF38}&#92;&#92;c{off} ";
            }elseif ($Track_Type == "Wii U") {
                $Generated_name .= "&#92;&#92;c{BLUE2}&#92;&#92;u{FF37,FF29,FF29,FF35}&#92;&#92;c{off} ";
            }elseif ($Track_Type == "Switch") {
                $Generated_name .= "&#92;&#92;c{YOR5}&#92;&#92;u{FF33,FF37}&#92;&#92;c{off} ";
            }elseif ($Track_Type == "Tour") {
                $Generated_name .= "&#92;&#92;c{YOR5}&#92;&#92;u{FF34,FF2F,FF35,FF32}&#92;&#92;c{off} ";
            }elseif ($Track_Type == "RMX") {
                $Generated_name .= "&#92;&#92;c{YOR5}&#92;&#92;u{FF32,FF2D,FF38}&#92;&#92;c{off} ";
            }

            $Generated_name .= $Track_Name;

            $Generated_name .= "&#92;n";
            if($Track_NEW == "1"){
                $Generated_name .= " &#92;&#92;c{RED}&#92;&#92;u{FF2E,FF25,FF37}&#92;&#92;c{off}";
            }elseif ($Track_NEW == "2") {
                $Generated_name .= " &#92;&#92;c{green}&#92;&#92;u{FF35,FF30,FF24,FF21,FF34,FF25}&#92;&#92;c{off}";
            }

            $Generated_name .= "&#92;n" . $Track_Creator;

            return $Generated_name;
        }
        public function Generate_Flag($Track_Type, $Slot_Type, $NewTrack){
            $ReturnFlag = "V";

            if($Slot_Type == "0"){
                $ReturnFlag .= "c";
            }elseif ($Slot_Type == "1") {
                $ReturnFlag .= "cH";
            }elseif ($Slot_Type == "2") {
                $ReturnFlag .= "-G";
            }
            
            if($Track_Type == "Custom"){
                if($NewTrack == "1" or $NewTrack == "2"){
                    $ReturnFlag .= "-N";
                }else{
                    $ReturnFlag .= "--";
                }
            }else if($Track_Type == "Other"){
                if($NewTrack == "1" or $NewTrack == "2"){
                    $ReturnFlag .= "-N";
                }else{
                    $ReturnFlag .= "--";
                }
            }else{
                if($NewTrack == "1" or $NewTrack == "2"){
                    $ReturnFlag .= "TN";
                }else{
                    $ReturnFlag .= "T-";
                }
            }
            $ReturnFlag .= "-";
            return $ReturnFlag;
        }
        public function RandomTrackID(){
            $RandomTrackID = NULL;

            $SearchQuery = "SELECT COUNT(ID) FROM mkvn_tracks";
            $stmt = $this->PDO_CONNECTION->query($SearchQuery);
            $count = $stmt->fetch(PDO::FETCH_ASSOC);

            $RandomTrackID = rand(1, $count['COUNT(ID)']);
            return $RandomTrackID;
        }
        public function GetTrackData($TrackID){
            $Get_Data = "SELECT * FROM mkvn_tracks WHERE ID = $TrackID";
            $stmt = $this->PDO_CONNECTION->prepare($Get_Data);
            $stmt->execute();
            $TrackData = $stmt->fetch(PDO::FETCH_ASSOC);
            return $TrackData;
        }
        public function GEN_Tracks_Same_Slot($HexID){
            $Get_Data = "SELECT * FROM mkvn_tracks WHERE SubTrackTo = '$HexID'";
            $stmt = $this->PDO_CONNECTION->prepare($Get_Data);
            $stmt->execute();
            $TrackData = $stmt->fetchAll(PDO::FETCH_ASSOC);
            $ReturnData = "";
            foreach ($TrackData as $Track) {
                $TRACK_NAME = $this->GenTrack_PREFIX($Track['Track_Type']) . " " . $Track['Track_Name'];
                $ReturnData.= "<div class='itemwrapper'>";
                    $ReturnData.="<a style='color: white; text-decoration: none; text-align: center;' href='track.php?TrackID=".$Track['ID']."'>";
                        $ReturnData.= "<div class='started-items-item'> GO TO TRACK </div>";
                        $ReturnData.= "<p>";
                            $ReturnData.= $TRACK_NAME;
                            $ReturnData.= "<br>";
                            $ReturnData.= "<i>" . $Track['Track_Creator'] . "</i>";
                        $ReturnData.= "</p>";
                    $ReturnData.="</a>";
                $ReturnData.="</div>";
            }
            
            return $ReturnData;
        }
        public function GetMusicNameURL($TrackSlot){
            $MusicName = "";
            $MusicYT = "";

            if($TrackSlot == "xLC"){ $MusicName = "SEQ_CIRCUIT2"; $MusicYT = "QpLhS2oVQbo";}
            elseif ($TrackSlot == "LC") { $MusicName = "SEQ_CIRCUIT2"; $MusicYT = "QpLhS2oVQbo"; }
            elseif ($TrackSlot == "MMM") { $MusicName = "Moo Moo Meadows"; $MusicYT = "U56J-OZubjk"; }
            elseif ($TrackSlot == "MG") { $MusicName = "Mushroom Gorge - Fanmade"; $MusicYT = "Humj2J3H3pY"; }
            elseif ($TrackSlot == "TF") { $MusicName = "Toad's Factory [Wii]"; $MusicYT = "ccrShvDe4H0"; }
            elseif ($TrackSlot == "MC") { $MusicName = "SEQ_CIRCUIT2"; $MusicYT = "QpLhS2oVQbo"; }
            elseif ($TrackSlot == "CM") { $MusicName = "VGM Remix: Coconut Mall"; $MusicYT = "D23TGGt4XGw"; }
            elseif ($TrackSlot == "DKS") { $MusicName = "DK Summit"; $MusicYT = "7hA8vSw_Xl8"; }
            elseif ($TrackSlot == "WGM") { $MusicName = "Wii Wario's Goldmine"; $MusicYT = "gBdo_XH--io"; }
            elseif ($TrackSlot == "DC") { $MusicName = "Daisy Circuit"; $MusicYT = "KlsqpjK4cr0"; }
            elseif ($TrackSlot == "KC") { $MusicName = "Koopa Cape"; $MusicYT = "IDRtQK1_fn4"; }
            elseif ($TrackSlot == "MT") { $MusicName = "Maple Treeway"; $MusicYT = "olCqzDFft8k"; }
            elseif ($TrackSlot == "GV") { $MusicName = "Airship Fortress"; $MusicYT = "w3is_kP2tTI"; }
            elseif ($TrackSlot == "DDR") { $MusicName = "Yoshi Desert"; $MusicYT = "_TMHjEarRbU"; }
            elseif ($TrackSlot == "MH") { $MusicName = "Moonview Highway"; $MusicYT = "Y4fOCPcz6i8"; }
            elseif ($TrackSlot == "BC") { $MusicName = "Bowser's Castle [Wii]"; $MusicYT = "fDRHLruabcA"; }
            elseif ($TrackSlot == "RR") { $MusicName = "Rainbow Road"; $MusicYT = "7pDDu2UMxAU"; }
            elseif ($TrackSlot == "gPB") { $MusicName = "Daisy Cruiser / Peach Beach [GCN]"; $MusicYT = "DLUe-g2wyvQ"; }
            elseif ($TrackSlot == "dYF") { $MusicName = "Yoshi's Island"; $MusicYT = "oHfZ89M9cYk"; }
            elseif ($TrackSlot == "sGV2") { $MusicName = "GBA Boo Lake"; $MusicYT = "FfMlIAd8P_Y"; }
            elseif ($TrackSlot == "nMR") { $MusicName = "3 Raceways & Wario Stadium"; $MusicYT = "dK5CLfElm-Q"; }
            elseif ($TrackSlot == "nSL") { $MusicName = "Frappe Snowland"; $MusicYT = "g-GrlBGgrkU"; }
            elseif ($TrackSlot == "gSGB") { $MusicName = "Koopa Troopa Beach 2 [SNES]"; $MusicYT = "gLRJ0UVyAIc"; }
            elseif ($TrackSlot == "dDS") { $MusicName = "Delfino Square"; $MusicYT = "Jjk3_XF5q5M"; }
            elseif ($TrackSlot == "gWS") { $MusicName = "Waluigi Pinball"; $MusicYT = "lPVPc2wEToQ"; }
            elseif ($TrackSlot == "dDH") { $MusicName = "Desert Hills"; $MusicYT = "vgsKDpXOllw"; }
            elseif ($TrackSlot == "gBC3") { $MusicName = "GBA Bowser Castle"; $MusicYT = "eGnqdTP1EUI"; }
            elseif ($TrackSlot == "nDKJP") { $MusicName = "Riverside Park"; $MusicYT = "K-X-xPv7CHs"; }
            elseif ($TrackSlot == "gMC") { $MusicName = "Circuit Theme"; $MusicYT = "P13M-tP1XNE"; }
            elseif ($TrackSlot == "sMC3") { $MusicName = "SNES Mario Circuit"; $MusicYT = "xlJqJ6duDvU"; }
            elseif ($TrackSlot == "dPG") { $MusicName = "Peach Gardens"; $MusicYT = "syBs0V7cLIk"; }
            elseif ($TrackSlot == "gDKM") { $MusicName = "Dino Dino Jungle"; $MusicYT = "3eSueL7izVA"; }
            elseif ($TrackSlot == "nBC") { $MusicName = "N64 Bowser's Castle"; $MusicYT = "Z-dYtUhTef0"; }
            elseif ($TrackSlot == "aBP") { $MusicName = "Block Plaza"; $MusicYT = "RftzTkZODuU"; }
            elseif ($TrackSlot == "aDP") { $MusicName = "Delfino Pier"; $MusicYT = "Q557nuKKCZc"; }
            elseif ($TrackSlot == "aFS") { $MusicName = "Funky Stadium"; $MusicYT = "agD2zJwDAlM"; }
            elseif ($TrackSlot == "aCCW") { $MusicName = "Chain Chomp Wheel"; $MusicYT = "m3QsGOohfic"; }
            elseif ($TrackSlot == "aTD") { $MusicName = "Thwomp Desert"; $MusicYT = "Od4jm1paVMc"; }
            elseif ($TrackSlot == "asBC4") { $MusicName = "SNES Battle Course 4"; $MusicYT = ""; }
            elseif ($TrackSlot == "agBC3") { $MusicName = "GBA Battle Course 3"; $MusicYT = "iohi2oByMNA"; }
            elseif ($TrackSlot == "anSS") { $MusicName = "N64 Skyscraper"; $MusicYT = "_gz0U59NTUY"; }
            elseif ($TrackSlot == "agCL") { $MusicName = "GCN Cookie Land"; $MusicYT = "WLcwsyVGf04"; }
            elseif ($TrackSlot == "adTH") { $MusicName = "DS Twilight House"; $MusicYT = "fnYJc8HxcUA"; }
            else { $MusicName = "No Music found"; $MusicYT = "dQw4w9WgXcQ"; }

            $Ret_Array = array( "Music_Name" => $MusicName, "Music_YT" => $MusicYT );
            return $Ret_Array;
        }
        public function GET_TTs($TrackID){
            $Get_Data = "
            SELECT
                mkvn_timetrail.Id,
                users.UserName,
                mkvn_timetrail.Time,
                mkvn_mkwii_characters.CharacterName,
                mkvn_mkwii_vehicles.VehicleName,
                mkvn_timetrail.IsVerified,
                users.Role
            From
                mkvn_timetrail Inner Join
                mkvn_mkwii_vehicles On mkvn_timetrail.Combo_Vehicle = mkvn_mkwii_vehicles.id
                Inner Join
                mkvn_mkwii_characters On mkvn_timetrail.Combo_Char = mkvn_mkwii_characters.id
                Inner Join
                users On mkvn_timetrail.UserID = users.ID
            WHERE
                mkvn_timetrail.TrackID = $TrackID
            ";
            $stmt = $this->PDO_CONNECTION->prepare($Get_Data);
            $stmt->execute();
            $TimeTrail = $stmt->fetchAll(PDO::FETCH_ASSOC);
            $ReturnData = "";
            if(!empty($TimeTrail)){
                foreach ($TimeTrail as $TT) {
                    $ReturnData.="<tr>";
                    $USERNAME = "";
                    if($TT['Role'] == 4){ $USERNAME = "<b style='color:Green'>[STAFF]</b>" . $TT['UserName']; }else{ $USERNAME = $TT['UserName']; }
                    $d = new DateTime($TT['Time']);
                    $Time = $d->format('i:s.v');
                    if($TT['IsVerified'] == 1) { $IsVerified = "<b style='color:green'>Verified!<b>" ;}else{ $IsVerified = "<b style='color:Red'>Not Verified!<b>"; }

                    $ReturnData.= "<td>" . $TT['Id'] . "</td>";
                    $ReturnData.= "<td>" . $USERNAME . "</td>";
                    $ReturnData.= "<td>" . $Time . "</td>";
                    $ReturnData.= "<td>" . $TT['CharacterName'] . " - " . $TT['VehicleName'] . "</td>";
                    $ReturnData.= "<td>" . $IsVerified . "</td>";
                    $ReturnData.="</tr>";
                }
            }
            return $ReturnData;
        }
        public function GET_Verified($UserID){
            $Get_Data = "SELECT Verified FROM users WHERE ID = '$UserID'";
            $stmt = $this->PDO_CONNECTION->prepare($Get_Data);
            $stmt->execute();
            $UserVer = $stmt->fetch(PDO::FETCH_ASSOC);

            if($UserVer['Verified'] != 1){ $UserVer['Verified'] = 0; }

            return $UserVer['Verified'];
        }
        public function GenerateTTChar() {
            $ReturnData = NULL;

            $Get_Data = "SELECT * FROM mkvn_mkwii_characters";
            $stmt = $this->PDO_CONNECTION->prepare($Get_Data);
            $stmt->execute();
            $UserVer = $stmt->fetchAll(PDO::FETCH_ASSOC);
            
            foreach ($UserVer as $key) {
                $ReturnData .= "<option value='".$key['id']."'>".$key['CharacterName']."</option>";
            }

            return $ReturnData;
        }
        public function GenerateTTVeh() {
            $ReturnData = NULL;

            $Get_Data = "SELECT * FROM mkvn_mkwii_vehicles";
            $stmt = $this->PDO_CONNECTION->prepare($Get_Data);
            $stmt->execute();
            $UserVer = $stmt->fetchAll(PDO::FETCH_ASSOC);
            
            foreach ($UserVer as $key) {
                $ReturnData .= "<option value='".$key['id']."'>".$key['VehicleName']."</option>";
            }

            return $ReturnData;
        }
        public function InsertTT($USR_ID,$TRK_ID,$Char,$Veh,$Time){
            $INSERT_ARRAY = array(
                ':Track_ID' => $TRK_ID,
                ':User_ID' => $USR_ID,
                ':Time' => $Time,
                ':Character' => $Char,
                ':Vehicle' => $Veh
            );
            $Insert_Query= "INSERT INTO mkvn_timetrail (TrackID, UserID, Time, Combo_Char, Combo_Vehicle) VALUES (:Track_ID, :User_ID, :Time, :Character, :Vehicle)";
            $stmt = $this->PDO_CONNECTION->prepare($Insert_Query);
            $stmt->execute($INSERT_ARRAY);
        }

        public function CHECKID(){
            $GEN_LIST = "";
            
            $LoopTimes = 2001; 

            for ($i=1; $i < $LoopTimes ; $i++) { 
                $SQL = "SELECT id FROM `mkvn_tracks` WHERE id = $i LIMIT 1";
                $stmt = $this->PDO_CONNECTION->prepare($SQL);
                $stmt->execute();
                if($stmt->rowCount() >= 1){
                    $GEN_LIST .= $i . " Has Value <br>";
                 }else{
                    $GEN_LIST .= $i . " HAS NOT HAVE A Value! <br>";
                 }

                 
            }

            

            return $GEN_LIST;
        }
    }
?>