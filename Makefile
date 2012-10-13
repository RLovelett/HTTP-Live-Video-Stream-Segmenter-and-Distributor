all:
	gcc -Wall -g live_segmenter.c -o live_segmenter -lavformat -lavcodec -lavutil -lbz2 -lm -lz -lfaac -lmp3lame -lx264 -lfaad -lpthread

dry:
	gcc -E -dM live_segmenter.c

clean:
	rm -f live_segmenter
