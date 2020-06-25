package prac02;

class Circle {
	private int x, y, radius;
	public Circle(int x, int y, int radius) {
		this.x = x;
		this.y = y;
		this.radius = radius;
	}
	public String toString() {
		return "Circle(" + x + "," + y + ")" + "반지름" + radius;
	}
	public boolean equals(Object obj) {
		Circle b = (Circle)obj;
		if(x == b.x && y == b.y) return true;
		else return false;
	}
}

public class CircleApp {
	public static void main(String[] args) {
		Circle a = new Circle(2,3,5);// 중심 (2,3)에 반지름 5인 원
		Circle b = new Circle(2,3,30);// 중심이 같은지 판단하는 프로그램.
		System.out.println("원 a : " + a);
		System.out.println("원 B : " + b);
		
		if(a.equals(b))
			System.out.println("같은 원");
		else
			System.out.println("서로 다른 원");
		
	}

}
