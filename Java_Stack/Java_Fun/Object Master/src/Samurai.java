public class Samurai extends Human{
	static int count =0;
	public Samurai() {
		super();
		this.setHealth(200);
		count++;
	}
	public void deathBlow(Human h) {
		h.setHealth(0);
		this.setHealth(this.getHealth()/2);
		
	}
	public void meditate() {
		this.setHealth(this.getHealth()+(this.getHealth()/2));
	}
	public int howMany() {
		return count;
	}
	@Override
	public String toString() {
		return "Samurai [howMany()=" + howMany() + ", getStrength()=" + getStrength() + ", getIntelligence()="
				+ getIntelligence() + ", getStealth()=" + getStealth() + ", getHealth()=" + getHealth()
				+ ", toString()=" + super.toString() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ "]";
	}
	
}
