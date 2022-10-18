# TowerUniteMediaPlayer
Quick way to host your own media server to play videos in the game Tower Unite

Guide:

Tested on Ubuntu 22.04.1 and 20.04.5

1. First download the setup script to your server. This can be done with the command below:

wget https://raw.githubusercontent.com/camerondiou/TowerUniteMediaPlayer/main/setup.sh

2. Allow the scipt to be executed:

chmod +x setup.sh

3. Run the script

./setup.sh

4. When that completes it might ask you to restart the some services. Just press OK for the defaults. 
5. Once the setup script exits you can the download the addMedia.sh script with the command below:

wget https://raw.githubusercontent.com/camerondiou/TowerUniteMediaPlayer/main/addMedia.sh

6. Allow the scipt to be executed:

chmod +x addMedia.sh

7. Run the script

./addMedia

8. Once the script starts it will ask you what you want to name the file. Whatever you enter here will be saved as the media file name, and the name of the webpage. 
9. Next the script will ask you for the URL to the media. Enter any destination and the script will try to download it and then convert it to webm. 
10. This might take some time depending on your network and the specs of your server, but once it is completed you can now watch your media in game by going to "http://your-ip/filename.html
11. Finally get some popcorn and watch some media with friends! 

Limitations:
- You can only watch self hosted content in your condo. 
- Media does not sync between clients. Make sure you have everyone in the room before adding media. 
- If you leave the room and come back it will restart the media. 
