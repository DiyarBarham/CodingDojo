
public class Circle extends GeometrivObject{
	private double radius;
	
	public Circle() {
		super();
	}
	
	public Circle(double radius) {
		super();
		this.radius = radius;
	}
	public Circle(double radius, String color, boolean filled) {
		super(color, filled);
		this.radius = radius;
	}

	public double getRadius() {
		return radius;
	}

	public void setRadius(double radius) {
		this.radius = radius;
	}
	public double getArea() {
		return (this.radius*this.radius*3.14);
	}
	public double getPerimeter() {
		return (2*3.14*this.radius);
	}
	public double getDiameter() {
		return (2*this.radius);
	}

	public String printCircle() {
		return "Circle [radius=" + radius + ", getArea()=" + getArea() + ", getPerimeter()=" + getPerimeter()
				+ ", getDiameter()=" + getDiameter() + ", getColor()=" + getColor() + ", isFilled()=" + isFilled()
				+ ", getDateCreated()=" + getDateCreated() + "]";
	}
	
	
	
}
