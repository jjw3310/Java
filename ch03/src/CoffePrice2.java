import java.util.Scanner;

public class CoffePrice2 {
	public static void main(String[] args) {
		int price;
		int iceprice;
		int sum;
		price = 0;
		iceprice = 0;
		sum = 0;
		
		Scanner coffee = new Scanner(System.in);
		
		System.out.print("원하시는 커피를 적어주세요 : ");
		String menu = coffee.next();
		
		switch (menu) {
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
		Scanner ice = new Scanner(System.in);
		System.out.print("얼음을 추가하시겠습니까?");
		String yes = ice.next();
		
		switch (yes) {
			case "네":
			case "좋아요":
			case "응":
			case "빨리요":
			case "Okay":
			case "yes":
			case "예스":
				iceprice = 500;
				break;
			default: System.out.println("잠시만 기다려주세요!");
		}
		if(iceprice == 500) {
			sum = price + iceprice;
			System.out.print("얼음 추가하셔서" + sum +"원 입니다.");
		}
		else if(price != 0) {
			System.out.print(coffee + "는" + price + "원 입니다.");
		}
		else
			System.out.print("다시 주문해주세요");
		
		coffee.close();
	}
}