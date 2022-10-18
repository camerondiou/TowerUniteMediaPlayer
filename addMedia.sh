#!/bin/bash
trap endScript INT
mkdir -p /var/www/html/videos/

function makeWebPage(){

echo "<!DOCTYPE html>
<html>
<head>
 <title>$FILENAME</title>
</head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
   body {
        background-color: #070a0f;
      }
video{
  width: 100vw;
  height: 100vh;
  object-fit: fill;
  position: fixed;
  top: 0;
  left: 0;
}
</style>
<body>
<video controls autoplay>>
  <source src="/videos/$FILENAME.webm" type=video/webm>
</video>
</body>
</html>" $FILENAME > /var/www/html/$FILENAME.html
}

function getVideo(){
 youtube-dl $MEDIA -o - | ffmpeg -i pipe: /var/www/html/videos/$FILENAME.webm
}

FILENAME=$(whiptail --inputbox "What do you want the file named?" 8 39 test --title "Creates: filename.html,filename.webm" 3>&1 1>&2 2>&3)
MEDIA=$(whiptail --inputbox "URL to media" 8 78 3>&1 1>&2 2>&3)
exitstatus=$?
if [ $exitstatus = 0 ]; then
    makeWebPage
    getVideo
else
    echo "User selected Cancel."
fi

echo "Done. You can now watch your media in game by going to "http://your-ip/$FILENAME.html""



