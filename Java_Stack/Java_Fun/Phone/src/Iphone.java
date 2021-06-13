public class Iphone extends Phone implements Ringable {
    public Iphone(String versionNumber, int batteryPercentage, String carrier, String ringTone) {
        super(versionNumber, batteryPercentage, carrier, ringTone);
    }
    @Override
    public String ring() {
    	String x= "iPhone "+this.getVersionNumber()+" says "+this.getRingTone();
		return x;
    }
    @Override
    public String unlock() {
        return "Unlocking via facial recognetion";
    }
    @Override
    public void displayInfo() {
    	System.out.println("iPhone "+this.getVersionNumber()+" from "+this.getCarrier());           
    }
}
