import java.util.Scanner;

public class Box {
	public static void main(String[] args) {
		double w;
		double h;
		double area;
		double perimeter;
		
		Scanner index = new Scanner(System.in);
		
		System.out.print("사각형의 가로는? ");
		w = index.nextDouble();
		System.out.print("사각형의 세로는? ");
		h = index.nextDouble();
		area = w * h;
		perimeter = 2 * (w + h);
		
		System.out.println("사각형의 넓이는 "+ area +"입니다.");
		System.out.println("사각형의 둘레는 "+ perimeter +"입니다.");
		
		index.close();
	}
}