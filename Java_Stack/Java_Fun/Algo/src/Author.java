
public class Author implements Comparable<Author>{
	private String fname, lname, bname;
	public Author(String fname, String lname, String bname) {
		this.fname=fname;
		this.lname=lname;
		this.bname=bname;
	}
	
	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getBname() {
		return bname;
	}

	public void setBname(String bname) {
		this.bname = bname;
	}


	public int compareTo(Author author) {
		return this.fname.compareTo(author.fname);
	}
}