package ex11;

interface A1 {
	public void aaa();
}
interface A2 {
	public void bbb();
}
public class Interface1 implements A1, A2 {
	public void aaa() {
		Interface ih = new Interface();
		System.out.pritnln("AAA 인터페이스");
	}
	public void bbb() {
		System.out.println("BBB 인터페이스");
	
	}
	public static void mian(String[] ) {
		Interface1 ih = new Interface1();
		ih.aaa();
		hl
	}

}
