# TowerUniteMediaPlayer
This small script aims to greatly expand the capabilities of the in game media player by allowing you to host your own media server to watch ANYTHING in game. It does this by converting any media (from any site supported by youtube-dl) to webm format, and then creates a webpage on your media server that sets up the exact parameters to have the media be in full screen on your player. 

Overview:

Tower Unite is a great game, but has some serious limitations on its media player. For starters it really only supports soundcloud and youtube. Along with this it can load web pages, but you are unable to interact with them after loading, so this makes most sites unusable. With this in mind I tried to create a solution that worked within these limitations, and tried to streamline it where anyone with basic Linux and networking knowledge can get this working. 

Guide:

Tested on Ubuntu 22.04.1 and 20.04.5

1. First download the setup script to your server. This can be done with the command below:

```bash
wget https://raw.githubusercontent.com/camerondiou/TowerUniteMediaPlayer/main/setup.sh
```

2. Allow the scipt to be executed:

```bash
chmod +x setup.sh
```

3. Run the script

```bash
./setup.sh
```

4. When that completes it might ask you to restart the some services. Just press OK for the defaults. 
5. Once the setup script exits you can the download the addMedia.sh script with the command below:

```bash
wget https://raw.githubusercontent.com/camerondiou/TowerUniteMediaPlayer/main/addMedia.sh
```

6. Allow the scipt to be executed:

```bash
chmod +x addMedia.sh
```

7. Run the script
```bash
./addMedia
```
8. Once the script starts it will ask you what you want to name the file. Whatever you enter here will be saved as the media file name, and the name of the webpage. 
9. Next it will ask you for the URL to the media. Enter any destination and the script will try to download it and then convert it to webm. 
10. This might take some time depending on your network, filesize and the specs of your server, but once it is completed you can now watch your media in game by going to "http://your-ip/filename.html". Just change out filename to the name you set in step 8. 
11. Finally get some popcorn and watch some media with friends! 

Limitations:
- You can only watch self hosted content in your condo. 
- Media does not sync between clients. Make sure you have everyone in the room before adding media. 
- If you leave the room and come back it will restart the media. 

To do:
- Make a script to convert local files
- Add external controls (Pause, play, next)
- Streaming directly in game. *almost working if anyone has a good method of implementing a icecast stream into a html5 player let me know!
- Make a playlist
- Containerize?
