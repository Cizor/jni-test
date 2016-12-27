public class HelloWorld{
	static{
		System.loadLibrary("helloworld");
	}
	public native void sayHello();
	public native void sayBye();
	public native int add(int a,int b);
	public native int sub(int a,int b);
	public static void main(String[] args) {
		new HelloWorld().sayHello();	
		new HelloWorld().sayBye();	
		System.out.println("ADDITIONS IS " + new HelloWorld().add(12,13));	
		System.out.println("Subtraction IS " + new HelloWorld().sub(16,5));	
	}
}

