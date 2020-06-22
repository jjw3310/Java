package prac01;

public class TV {
	private String manufacturer;
	private int year;
	private int size;
	
	public TV(String manufacturer, int year, int size) {
		this.manufacturer = manufacturer;
		this.year = year;
		this.size = size;
	}
	public void show() {
		System.out.print(this.manufacturer + " 에서 만든 ");
		System.out.print(this.year + "년형 ");
		System.out.println(this.size + "인치 TV");	
	}
	public static void main(String[] args) {
		TV myTV = new TV("LG", 2017, 32);
		TV yourTV = new TV("samsung", 2020, 56);
		
		myTV.show();
		yourTV.show();
	}

}
