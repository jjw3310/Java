import java.util.Scanner;

public class Eng2Kor {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		String eng[] = {"student", "love", "java", "happy", "future"};
		String kor[] = {"학생", "사랑", "자바", "행복한", "미래"};
		
		while (true) {
			System.out.println("영어 단어를 입력하세요 >> ");
			String voca = scanner.next();
			if(voca.equals("exit"))
				break;
			int i;
			for (i = 0; i < eng.length; i++) {
				if (voca.equals(eng[i])) {
						System.out.println(kor[i]);
						break;
				}
			}
			if (i == eng.length)
				System.out.println("단어가 없습니다.");
		}
	}
}
