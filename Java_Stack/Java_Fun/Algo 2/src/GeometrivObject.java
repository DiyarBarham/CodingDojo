import java.util.Date;
public class GeometrivObject {
	private String color;
	private boolean filled;
	private Date dateCreated;
	
	public GeometrivObject() {
		this.color = "White";
		this.filled = false;
		this.dateCreated = new Date();
	}
	public GeometrivObject(String color, boolean filled) {
		this.color = color;
		this.filled = filled;
		this.dateCreated = new Date();
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public boolean isFilled() {
		return filled;
	}
	public void setFilled(boolean filled) {
		this.filled = filled;
	}
	public Date getDateCreated() {
		return dateCreated;
	}
	@Override
	public String toString() {
		return "GeometrivObject [color=" + color + ", filled=" + filled + ", dateCreated=" + dateCreated + "]";
	}
	
}
