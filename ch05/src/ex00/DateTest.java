package ex00;

public class DateTest {
	public static void main(String[] args) {
		Date date1 = new Date();
		Date date2 = new Date(2020);
		Date date3 = new Date(3000, "7월", 30);
		System.out.println(date1);
		System.out.println(date2);
		System.out.println(date3);
	}

}
