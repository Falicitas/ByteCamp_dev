CC = g++

CFLAGS =  --std=c++11 -lprotobuf -lpthread

all: app

app: ./pb/ad.pb.cc ./pb/user.pb.cc ./main/main.cpp ./main/read_data.hpp ./main/sub_data.hpp 
	$(CC) $^ $(CFLAGS) -o build/runit

clean: 
	rm -rf app
