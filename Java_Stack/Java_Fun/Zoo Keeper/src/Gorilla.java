
public class Gorilla extends Mammal{
	public Gorilla() {
		super();
	}
	public String throwSomething() {
		this.energylevel -=5;
		return "the Gorilla has thorwn Something! Watch out!";
	}
	public String eatBananas() {
		this.energylevel +=10;
		return "the Gorilla has eaten banana! it is satisfied";
	}
	public String climb() {
		this.energylevel -=10;
		return "the Gorilla has climbed a tree! -10 energy";
	}
	
}
