FFLIBS=`pkg-config --libs libavformat libavcodec libavutil`
FFFLAGS=`pkg-config --cflags libavformat libavcodec libavutil`
all:
	gcc -Wall -g live_segmenter.c -o live_segmenter ${FFFLAGS} ${FFLIBS}

dry:
	gcc -E -dM live_segmenter.c

clean:
	rm -f live_segmenter
