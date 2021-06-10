public class Human {
	private int strength = 3, intelligence = 3, stealth = 3, health = 100;
	
	public Human(int health, int intelligence) {
		this.health = health;
		this.intelligence = intelligence;
	}
	public Human() {
	}
	public void attack(Human h) {
		h.health -= this.strength;
	}

	public int getStrength() {
		return strength;
	}

	public void setStrength(int strength) {
		this.strength = strength;
	}

	public int getIntelligence() {
		return intelligence;
	}

	public void setIntelligence(int intelligence) {
		this.intelligence = intelligence;
	}

	public int getStealth() {
		return stealth;
	}

	public void setStealth(int stealth) {
		this.stealth = stealth;
	}

	public int getHealth() {
		return health;
	}

	public void setHealth(int health) {
		this.health = health;
	}

	@Override
	public String toString() {
		return "Human [strength=" + strength + ", intelligence=" + intelligence + ", stealth=" + stealth + ", health="
				+ health + "]";
	}
	

}
