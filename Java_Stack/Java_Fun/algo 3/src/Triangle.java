
public class Triangle extends Shape{
	private int base, height;
	
	public Triangle() {
		super();
	}
	
	
	public int getBase() {
		return base;
	}


	public void setBase(int base) {
		this.base = base;
	}


	public int getHeight() {
		return height;
	}


	public void setHeight(int height) {
		this.height = height;
	}


	@Override
	public double getArea() {
		// TODO Auto-generated method stub
		return (0.5*this.base*this.height);
	}


	@Override
	public String toString() {
		return "Triangle [base=" + base + ", height=" + height + ", getArea()=" + getArea() + "]";
	}
	

}
