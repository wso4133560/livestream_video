git clone https://github.com/ggerganov/whisper.cpp.git

cd whisper.cpp

cmake -B build -DGGML_CUDA=1
cmake --build build -j32 --config Release

ln -s ../playlist4whisper.py .
ln -s ../livestream_video.sh .
ln -s ./build/bin/whisper-cli .
ln -s ../playlist_iptv.m3u .
ln -s ../playlist_streamlink.m3u .
ln -s ../playlist_twitch.m3u .
ln -s ../playlist_youtube.m3u .
ln -s ../playlist_yt-dlp.m3u .


sudo apt-get install mpv smplayer translate-shell vlc ffmpeg python3-tk python3-pip bc gnome-terminal xterm
pip3 install yt-dlp streamlink
