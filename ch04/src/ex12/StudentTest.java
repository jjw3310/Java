package ex12;

public class StudentTest {
	public static void main(String[] args) {
/*		Student info = new Student();
		info.Student(20, "영수", 30);
		info.Student();
		info.Student(20, "수영");
		*/
		Student obj1 = new Student();
		System.out.println(obj1);
		Student obj2 = new Student(111, "kim", 25);
		System.out.println(obj2);
		Student obj3 = new Student(123, "Lee");
		System.out.println(obj3);
	}
}

