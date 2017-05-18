SRC 	= ./src
OBJ 	= ./obj
BIN 	= ./bin
FILES 	= Main.cpp Config.cpp Utils.cpp Stopwatch.cpp LR.cpp Matrix.cpp Log.cpp
INCLUDE = ./include
SOURCES = $(patsubst %,$(SRC)/%,$(FILES))
OBJECTS = $(patsubst %.cpp,$(OBJ)/%.o,$(FILES))

TARGET 	= $(BIN)/main

CXX  	= g++
COPT 	= -O3
CFLAGS  = -I $(INCLUDE) -std=c++11 -g -Wall -Werror -Wextra -Wno-unused-function -Wno-unused-parameter $(COPT)
LDFLAGS = 

MKDIR_P = @mkdir -p

all: $(TARGET)

run: $(TARGET)
	@$(TARGET) cfg.txt

$(OBJ)/%.o: $(SRC)/%.cpp
	$(MKDIR_P) $(OBJ)
	$(CXX) $(CFLAGS) -c $< -o $@

$(TARGET): $(OBJECTS)
	$(MKDIR_P) $(BIN)
	$(CXX) $(LDFLAGS) $(OBJECTS) -o $(TARGET)

clean:
	rm -rf $(BIN)
	rm -rf $(OBJ)
