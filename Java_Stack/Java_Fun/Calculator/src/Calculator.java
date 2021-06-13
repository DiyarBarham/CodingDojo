
public class Calculator {
	private double OperationOne, OperationTwo, result;
	private String Operation;
	
	public Calculator(){
	}

	public double getOperationOne() {
		return OperationOne;
	}

	public void setOperationOne(double operationOne) {
		OperationOne = operationOne;
	}

	public double getOperationTwo() {
		return OperationTwo;
	}

	public void setOperationTwo(double operationTwo) {
		OperationTwo = operationTwo;
	}

	public String getOperation() {
		return Operation;
	}

	public void setOperation(String operation) {
		Operation = operation;
	}
	
	public void performOperation() {
		if (this.Operation == "+") {
			this.result = this.OperationOne + this.OperationTwo;
		} else {
			this.result = this.OperationOne - this.OperationTwo;
		}
	}

	public double getResult() {
		return result;
	}
	
}
