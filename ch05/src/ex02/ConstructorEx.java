package ex02;

class A {
	public A() {
		System.out.println("생성자A");
	}
	public B() extends A {
		System.out.println("생성자B");
	}
	public C() extends B {
		System.out.println("생성자C");
	}
}

public class ConstructorEx {
	C c = new C();

}
