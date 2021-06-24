import java.util.Scanner;

public class Ten {
	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);// Here we defined the scanner
		int sum = 0, holder;// here we defined two integers one for the sum and the others to hold each
							// input and check if its a multipile of 10
		for (int i = 1; i <= 10; i++) {// a for loop to make 10 numbers
			System.out.println("enter number No." + i + ": ");
			holder = scan.nextInt();// here we take the first integer
			while (holder % 10 != 0) {// a while loop to not accept the input untill it is a multipile of 10
				System.out.println("the number you entered is not a multipile of 10 plz retry:");
				holder = scan.nextInt();// to hold the new number and check if it is correct
			}
			sum += holder;// to add the added number to the sum
		}
		System.out.println("the sum of the numbers is: " + sum);// here we print the final sum
	}
}
