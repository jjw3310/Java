import java.util.Random;

public class Prize {
	public static void main(String[] args) {
		String[] str= {"아이폰", "삼성노트북", "갤럭시노트10",
				"LG세탁기", "꽝"};
		Random random = new Random();
		int num=random.nextInt(5);
		System.out.println("추첨번호: " + num);
		if(num==4) {
			System.out.println("아쉽네요. 다음 기회에~");
		} else {
			System.out.println("축하합니다." + str[num] + "에 당첨되었습니다.");
		}
	}
}
