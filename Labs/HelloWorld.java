import java.util.Scanner;
class HelloWorld{

	static Scanner foo = new Scanner(System.in);
	
	public static void main(String[] args) {

		System.out.println("Hello World!");
		
		System.out.print("How are you?");
		String bar = foo.nextLine();
		System.out.println("Interesting, thank you for telling me that you are" + bar);
	}

}
