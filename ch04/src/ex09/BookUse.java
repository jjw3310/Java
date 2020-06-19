package ex09;

public class BookUse {
	public static void main(String[] args) {
		Book book = new Book("java", "김선생", "영진", 2018, 30000, 10);
		book.calc();
		book.print();
		Book book2 = new Book("dk", "fl", "tm", 10, 30, 4);
		book2.calc();
		book2.print();
	}
}
