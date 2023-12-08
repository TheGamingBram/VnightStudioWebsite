<?php
  session_start();
  require("./Assets/DB/DB_Info_CONFIG.php");
  $DB_Connection = new connection;

  require("./Assets/HTML/Header.php");
?>
<head>
    <style>
        @keyframes MoveBC{
        0% {background-position: 0% 0%}
        100% {background-position: 0% 0%}
        }
    </style>
</head>
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
    
#LE-DEF1

#------------------------------------------------------------------------------
#
# This file was created either by command »wlect distrib ... LE-DEF=...« or by
# command »wlect create LE-DEF«. 
#
# This file can only be read by the tools since version 2.28a.
#
#------------------------------------------------------------------------------


#
############
   [TOOL]
############

# Information about the tool that created this file.
# This section is optional. If present, it must be the first section.

TOOL		= wlect
SYSTEM		= cygwin64
VERSION		= 2.32a
REVISION	= 8742
DATE		= 2022-12-25


#
##################
   [TRACK-LIST]
##################

IGNORE-SLOT 0

#--- battle arenas

STANDARD-BATTLE-ARENAS

#------------------------------------------------------------------------------
# Track Flags INFO
# "Vc----" = Custom Track
# "VcH---" = Custom Track -HEAD-
# "V-G---" = Custom Track -Group-
# 
# "Vc-N--" = Custom Track (Add To Random rNew)
# "VcHN--" = Custom Track -HEAD- (Add To Random rNew)
# "V-GN--" = Custom Track -Group- (Add To Random rNew)
#
# "Vc-T--" = Custom Track (Add To Random rTex) (ADD TO RETRO TRACK)
# "VcHT--" = Custom Track -HEAD- (Add To Random rTex) (ADD TO RETRO TRACK)
# "V-GT--" = Custom Track -Group- (Add To Random rTex) (ADD TO RETRO TRACK)
#
# "Vc-TN-" = Custom Track (Add To Random rTex,rNew)
# "VcHTN-" = Custom Track -HEAD- (Add To Random rTex,rNew)
# "V-GTN-" = Custom Track -Group- (Add To Random rTex,rNew)
#
# "Vo----" = Track (no special reaction)
#------------------------------------------------------------------------------

#--- versus tracks - Randoms

SLOT 62
TRACK rAll vs MC MC "Vc----"
  name  "\\c{white}\\u{FF32,FF21,FF2E,FF24,FF2F,FF2D}\\c{off} : All Tracks"
  xname "\\c{white}\\u{FF32,FF21,FF2E,FF24,FF2F,FF2D}\\c{off} : All Tracks\nA course will be chosen at random."

SLOT 61
TRACK rTex vs MC MC "VcT---"
  name  "\\c{white}\\u{FF32,FF21,FF2E,FF24,FF2F,FF2D}\\c{off} : Retro Tracks"
  xname "\\c{white}\\u{FF32,FF21,FF2E,FF24,FF2F,FF2D}\\c{off} : Retro Tracks\nA Retro course will be chosen at random."

SLOT 65
TRACK rNew vs MC MC "Vc-N--"
  name  "\\c{white}\\u{FF32,FF21,FF2E,FF24,FF2F,FF2D}\\c{off} : New / Updated Tracks"
  xname "\\c{white}\\u{FF32,FF21,FF2E,FF24,FF2F,FF2D}\\c{off} : New / Updated Tracks\nA Custom course with the \\c{RED}\\u{FF2E,FF25,FF37}\\c{off} & \\c{green}\\u{FF35,FF30,FF24,FF21,FF34,FF25}\\c{off}\n tag will be chosen at random."

SLOT 63
TRACK rOrig vs MC MC "Vo----"
  name  "\\c{red}\\u{FF32,FF21,FF2E,FF24,FF2F,FF2D}\\c{off} : Tracks"
  xname "\\c{red}\\u{FF32,FF21,FF2E,FF24,FF2F,FF2D}\\c{off} : Tracks\nA Retro course in the first 8 cups will be chosen at random.\n\\c{red}Please don't use this!\\c{off}"

#--- versus tracks - Tracks

<?=$DB_Connection->Generate_LeDef();?>

#
################
   [CUP-LIST]
################

#--- battle cups

# 2 battle cups with standard layout (STANDARD-BATTLE-CUPS):
APPEND-BT	bt33	bt32	bt35	bt34	bt36	# 0
APPEND-BT	bt39	bt40	bt41	bt37	bt38	# 1
ADD-UNUSED-ARENAS	= yes

# 1 random cups:
APPEND-VS	rAll  rNew  rTex  rOrig
<?=$DB_Connection->Generate_LeDef_Small();?>
ADD-UNUSED-TRACKS	= yes

#
###########
   [END]
###########
        </pre>
    </div>
<?php
    require("./Assets/HTML/Footer.php");
?>