
public class Bat extends Mammal {
	public Bat() {
		super.energylevel=300;
	}
	public String fly(){
		this.energylevel -= 50;
		return "the sound a bat taking off and decrease its energy by 50.";
	}
	public String eatHumans(){
		this.energylevel +=25;
		return "the so- well, never mind, just increase its energy by 25.";
	}
	public String attackTown(){
		this.energylevel -= 100;
		return "the sound of a town on fire and decrease its energy by 100.";
	}
}
