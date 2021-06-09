import java.util.Scanner;

public class Main {

	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		char i = 'y';
		while (i == 'y') {
		System.out.println("enter the number:");
		int val1 = scan.nextInt();
		String result = find(val1);
		if (result == "n"){
				System.out.println(val1);
		}else {
			System.out.println(result);
		}
		System.out.println("Do you want to continue? (y/n)");
		i = scan.next().charAt(0);
		}
		scan.close();
		System.out.println("Thanks for using our app :)");
	}
	static String find(int val1) {
		String result;
		if (val1%3==0 && val1%5==0) {
			return result = "FizzBuzz";
		}else if (val1%3==0) {
			return result = "Fizz";
		}else if(val1%5==0) {
			return result = "Buzz";
		}else {
			return result = "n";
		}
	}
	}
