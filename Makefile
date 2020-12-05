CC=gcc
#CFLAGS=-Wall -DCONFIG_OPENSSL -DDEBUG_PAIR -g
#LIBS=-levent -lplist -lssl -lcrypto -lsodium
CFLAGS=-Wall -DCONFIG_GCRYPT  -DDEBUG_PAIR -g
LIBS=-levent -lplist -lgcrypt -lsodium

all:
	$(CC) $(CFLAGS) pair-example.c pair_homekit.c tlv.c evrtsp/rtsp.c -o pair-example $(LIBS)
