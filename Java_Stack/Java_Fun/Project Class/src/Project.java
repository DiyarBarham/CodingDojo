
public class Project {
	private String name, desc;
	
	public Project() {
		
	}
	public Project(String name) {
		this.name = name;
	}
	public Project(String name, String desc) {
		this.name = name;
		this.desc = desc;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	
	public String ElevatorPitch() {
		return (this.name+": "+this.desc);
	}
}
