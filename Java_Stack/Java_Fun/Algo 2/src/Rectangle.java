
public class Rectangle extends GeometrivObject{
	private double width, height;
	public Rectangle() {
		super();
	}
	public Rectangle(double width, double hight) {
		super();
		this.width=width;
		this.height=hight;
	}
	public Rectangle(double width, double hight, String color, boolean filled) {
		super(color, filled);
		this.width=width;
		this.height=hight;
	}
	public double getWidth() {
		return width;
	}
	public void setWidth(double width) {
		this.width = width;
	}
	public double getHeight() {
		return height;
	}
	public void setHeight(double height) {
		this.height = height;
	}
	public double getArea() {
		return(this.width*this.height);
	}
	public double getPerimeter() {
		return (2*(this.height+this.width));
	}
}
