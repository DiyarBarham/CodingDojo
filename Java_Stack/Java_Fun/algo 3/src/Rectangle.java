
public class Rectangle extends Shape{
	private int length, width;
	
	public Rectangle() {
		super();
	}
	
	@Override
	public double getArea() {
		// TODO Auto-generated method stub
		return this.length*this.width;
	}

	@Override
	public String toString() {
		return "Rectangle [length=" + length + ", width=" + width + ", getArea()=" + getArea() + "]";
	}

	public int getLength() {
		return length;
	}

	public void setLength(int length) {
		this.length = length;
	}

	public int getWidth() {
		return width;
	}

	public void setWidth(int width) {
		this.width = width;
	}
	
	

}
