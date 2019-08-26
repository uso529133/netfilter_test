all : netfilter_test

netfilter_test: main.o
	g++ -g -w -o netfilter_test main.o -lnetfilter_queue

main.o:
	g++ -g -w -c -o main.o main.cpp

clean:
	rm -f netfilter_test
	rm -f *.o

