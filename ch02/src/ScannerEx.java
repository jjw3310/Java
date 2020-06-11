import java.util.Scanner;

public class ScannerEx {
	public static void main(String[] args) {
		System.out.println("이름, 도시, 나이, 체중, 독신 여부를 빈칸으로 분리하여 입력하세요.");
		Scanner Ohyes = new Scanner(System.in);

		String name = Ohyes.next();
		System.out.print("이름은 " + name + ", ");

		String city = Ohyes.next();
		System.out.print("도시는 " + city + ", ");

		int age = Ohyes.nextInt();
		System.out.print("나이는 " + age + "살, ");

		double weight = Ohyes.nextDouble();
		System.out.print("체중은 " + weight + "kg, ");

		boolean single = Ohyes.nextBoolean();
		System.out.print("독신 여부는 " + single + "입니다.");

		Ohyes.close();
	}
}
