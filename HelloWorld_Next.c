#include<jni.h>
#include<stdio.h>
#include"HelloWorld.h"


JNIEXPORT jint JNICALL Java_HelloWorld_sub(JNIEnv * env, jobject obj, jint a, jint b){
	return (jint)(a-b);
}

