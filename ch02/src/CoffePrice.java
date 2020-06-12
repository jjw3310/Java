import java.util.Scanner;

public class CoffePrice {
	public static void main(String[] args) {
		int price;
		price = 0;
		
		Scanner menu = new Scanner(System.in);
		
		System.out.print("원하시는 커피를 말씀해주세요 : ");
		String coffee = menu.next();
		
		switch (coffee) {
		case "에스프레소":
		case "카푸치노":
		case "카페라떼":
			price = 3500;
			break;
		case "아메리카노":
			price = 2000;
			break;
		default: System.out.println("메뉴에 없습니다.");	
		}
		if(price != 0) System.out.print(coffee + "는 " + price + "원 입니다.");
		menu.close();
	}

}