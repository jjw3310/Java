package ex00;

public class Date {
	private int year;
	private String month;
	private int day;
	
	public Date() {
		this(1900, "1월", 1);
	}
	public Date(int year) {
		this(year, "1월", 1);
	}
	public Date(int year, String month, int day) {
		this.month = month;
		this.day = day;
		this.year = year;
	}
	
	public String toString() {
		return "Date [year=" + year + ", monte =" + month + ", " + "day =" + day + "]";
	}

}
