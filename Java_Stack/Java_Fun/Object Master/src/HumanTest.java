
public class HumanTest {

	public static void main(String[] args) {
		Human h1 = new Human();
		Human h2 = new Human();
		System.out.println(h1.toString());
		System.out.println(h2.toString());
		h1.attack(h2);
		System.out.println(h2.toString());
		Wizard w = new Wizard();
		System.out.println(w.toString());
		Samurai s = new Samurai();
		s.deathBlow(h2);
		s.deathBlow(h2);
		s.deathBlow(h2);
		s.deathBlow(h2);
		System.out.println(s.toString());
	}

}
