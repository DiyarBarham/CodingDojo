
public class Ninja extends Human{
	public Ninja() {
		super();
		this.setStealth(10);
	}
	public void steal(Human h) {
		h.setHealth(h.getHealth()-this.getStealth());
		this.setHealth(this.getStealth()*2);
	}
	public void runAway() {
		this.setHealth(this.getHealth()-10);
	}
	@Override
	public String toString() {
		return "Ninja [getStrength()=" + getStrength() + ", getIntelligence()=" + getIntelligence() + ", getStealth()="
				+ getStealth() + ", getHealth()=" + getHealth() + ", toString()=" + super.toString() + ", getClass()="
				+ getClass() + ", hashCode()=" + hashCode() + "]";
	}
	
}
