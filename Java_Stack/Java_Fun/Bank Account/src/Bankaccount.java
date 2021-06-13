public class Bankaccount {
	private String accnumber;
	private double checkbalance, savingbalance;
	private static int count=0, total=0;
	private String acc() {
		long number = (long) Math.floor(Math.random() * 9_000_000_000L) + 1_000_000_000L;
		return Long.toString(number);
		
	}
	
	public Bankaccount() {
		this.accnumber = acc();
		count++;
		this.checkbalance=0;
		this.savingbalance=0;
	}


	public double getSavingbalance() {
		return savingbalance;
	}

	public double getCheckbalance() {
		return checkbalance;
	}
	public void add(String str, double val) {
		total +=val;
		if (str == "saving") {
			this.savingbalance+=val;
		}
		else {
			this.checkbalance+=val;
		}
	}
	public double withdraw(String str, double val) {
		total-=val;
		if(str=="saving") {
			this.savingbalance-=val;
			return val;
		}
		this.checkbalance-=val;
		return val;
	}
	public double gettotal() {
		return this.savingbalance+this.checkbalance;
	}
}
