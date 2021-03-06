CC = g++
CFLAGS = -pg -g -O2 -Wall
LDFLAGS = -pg -g
LIBS = -lm
CXXFLAGS = -g -O2 -fopenmp -std=gnu++11

raytracer:  main.o raytracer.o util.o light_source.o scene_object.o bmp_io.o NormalMap.o
	$(CC) $(CFLAGS) $(CXXFLAGS) -o raytracer \
		main.o raytracer.o util.o light_source.o scene_object.o bmp_io.o NormalMap.o $(LIBS)


clean:
	-rm -f core *.o
	-rm raytracer
