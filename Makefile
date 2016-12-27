JAVA=java
JAVAC=javac
JAVAH=javah
CC=gcc
CXX=g++
RM= rm -f

JAVA_OPTIONS= -Djava.library.path=. -cp 
JAVAH_OPTIONS= -jni -classpath
CC_OPTIONS= -shared -fPIC
CC_LINKER_OPTION = -o

JNI_LOC= -I/usr/lib/jvm/java-7-openjdk-amd64/include/

PRESENT_DIR= .

JAVA_SRC_FILE= HelloWorld.java
C_SRC_FILE= HelloWorld.c HelloWorld_Next.c HelloWorld.cpp
LIB_NAME=libhelloworld.so

default:all

all:java_exe java_header_gen lib_gen

java_exe:
	$(JAVAC) $(JAVA_SRC_FILE)

java_header_gen:
	$(JAVAH) $(JAVAH_OPTIONS) $(PRESENT_DIR) $(JAVA_EXE_NAME)$(basename $(JAVA_SRC_FILE))

lib_gen:
	$(CXX) $(CC_OPTIONS) $(C_SRC_FILE) $(JNI_LOC) $(CC_LINKER_OPTION) $(LIB_NAME)

clean:
	$(RM) $(LIB_NAME)
