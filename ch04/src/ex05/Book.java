package ex05;

public class Book {
	String title;
	String author;
	void show() { System.out.println(title + " " + author); }
	
	public Book() {
		this("","");
		System.out.println("생성자 호출됨");
	}
	
	public Book(String title) {
		this(title, "작자미상"); // 작자미상이 author 인걸 어떻게 알지? this("", "")일 경우
							// 현재 객체에서 2개의 인자를 받는 함수를 실행시킨다.
	}
	
	public Book(String title, String author) {
		this.title = title; this.author = author;
	}
	
	public static void main(String[] args) {
		Book littlePrince = new Book("어린왕자", "생텍쥐페리");
		Book loveStory = new Book("춘향전");
		Book emptyBook = new Book();
		loveStory.show();
	//	littlePrince.show();
//		emptyBook.show();
	}

}
