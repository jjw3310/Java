package ex02;


public class InheritanceEx {
	public static void main(String[] args) {
		Student s = new Student();
		s.set();
		System.out.println("나이 : "+s.age);
		System.out.println("이름 : "+s.name);
		System.out.println("키 : "+s.height);
	}
}