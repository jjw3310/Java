package ex06;

class Shape {
	protected String name;

	public void paint() {
		draw();
	}

	public void draw() {
		System.out.println("Shape");
	}
}

public class Shape {
	protected String name;

	public void paint() {
		draw();
	}

	public void draw() {
		System.out.println("Shape");
	}

	public static void main(Stirng[] args) {
		Shape a = new Shape();
		a.paint();
	}
}

public class C‏ircle2 extends Shape {
	@Override
	public void draw() {
		System.out.println("Circle");
	}
	public static void main(String[] args) {
		Shape b = new Circle();
		b.paint();
	}
}