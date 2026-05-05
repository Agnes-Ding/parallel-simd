CXX = g++
CXXFLAGS = -O2 -fno-tree-vectorize -march=armv8-a+simd -mtune=cortex-a72 -fopenmp
LDFLAGS = -fopenmp

TARGET = main
SOURCES = main.cc
OBJECTS = $(SOURCES:.cc=.o)

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CXX) $(OBJECTS) -o $(TARGET) $(LDFLAGS)

%.o: %.cc
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f $(OBJECTS) $(TARGET)

.PHONY: all clean