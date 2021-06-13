
public class Phonetester {

	public static void main(String[] args) {
		Galaxy s9 = new Galaxy("S9", 99, "Verizon", "Ring Ring Ring!");
		Iphone iphoneten = new Iphone("X", 100, "AT&T", "Zing");
		
		s9.displayInfo();
		System.out.println(s9.ring());
		System.out.println(s9.unlock());
		
		iphoneten.displayInfo();
		System.out.println(iphoneten.ring());
		System.out.println(iphoneten.unlock());

	}

}
