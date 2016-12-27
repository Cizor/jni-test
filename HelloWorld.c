#include <jni.h>
#include "Hello_cpp.h"

JNIEXPORT void JNICALL Java_HelloWorld_sayHello(JNIEnv * env, jobject obj) {
	printf("Hello World from C\n");
	sayHelloagain();
	//return;
}
JNIEXPORT void JNICALL Java_HelloWorld_sayBye(JNIEnv * env, jobject obj) {
	printf("Bye World\n");
	//return;
}
JNIEXPORT jint JNICALL Java_HelloWorld_add(JNIEnv * env, jobject obj, jint a, jint b){
//	printf("Addition is %d\n", (a+b));
	return (jint)(a+b);
}}
