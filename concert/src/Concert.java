import java.util.Scanner;

public class Concert {
	private String hallName; // 콘서트 시설 이름
	private Group[] group = new Group[5]; // 좌석 배열 생성
	private String[] time = new String[4]; // 예약시간 배열 생성
	private Scanner scanner = new Scanner(System.in); // 입력 받는 환경 선언

	public Concert(String hallName) {  // 좌석 생성 메소드
		this.hallName = hallName;
		group[0] = new Group('S', 10); // S 타입 좌석 생성
		group[1] = new Group('A', 10); // A 타입 좌석 생성
		group[2] = new Group('B', 10); // B 타입 좌석 생성
		group[3] = new Group('C', 10); // C 타입 좌석 생성
		group[4] = new Group('D', 10); // D 타입 좌석 생성
		time[0] = "08:00"; // 예약시간 배열 배치
		time[1] = "12:00";
		time[2] = "16:00";
		time[3] = "20:00";
	}
	
	private void reserve() { // 콘서트 예약 메소드
		System.out.print("좌석구분 S(1), A(2), B(3), C(4), D(5)>>");
		int type = scanner.nextInt();
		if (type < 1 || type > 5) {
			System.out.println("잘못된 좌석 타입입니다.");
			return;
		}
		group[type-1].reserve();
		System.out.print("원하시는 공연 시간을 선택하세요.\n08:00(1), 12:00(2), 16:00(3), 20:00(4), 취소(5)");
		int number = scanner.nextInt();  // 예약시간 설정
		if (number < 1 || number > 5) {
			System.out.println("죄송합니다. 시간을 찾을 수 없습니다.\n다시 예약해주세요.");
			reserve();
		}
		while (number != 5) { 
			switch (number) {
				case 1:	
//					String time = time[0];
					System.out.println("예약하신 시간은 " + time[0] + "입니다.");
					return;
				case 2:	
//					time = time[1];
					System.out.println("예약하신 시간은 " + time[1] + "입니다.");
					return;
				case 3:	
					System.out.println("예약하신 시간은 " + time[2] + "입니다.");
					return;
				case 4:	
					System.out.println("예약하신 시간은 " + time[3] + "입니다.");
					return;
				default:
					System.out.println("잘못 입력하셨습니다.");
			}
		}
		
	}
	
	private void search() { // 콘서트 예약 검색
		for (int i=0;i<group.length; i++)
			group[i].show();
		System.out.println("<<<조회를 완료하였습니다.>>>");		
	}
	
	private void cancel() { // 콘서트 예약 취소
		System.out.print("좌석 S:1, A:2, B:3, C:4, D:5>>");
		int type = scanner.nextInt();
		if (type < 1 || type > 5) {
			System.out.println("잘못된 좌석 타입입니다.");
			return;
		}
		group[type-1].cancel();
	}
	
	public void run() { // 콘서트 예약/취소/검색 등 
		System.out.println(hallName + " 예약 시스템입니다.");
		int choice = 0;
		while (choice != 4) { 
			System.out.print("예약:1, 조회:2, 취소:3, 끝내기:4>>");
			choice = scanner.nextInt();
			switch (choice) {
				case 1:	
					reserve();
					break;
				case 2:	
					search();
					break;
				case 3:	
					cancel();
					break;
				case 4:	
					break;
				default:
					System.out.println("잘못 입력하셨습니다.");
			}
		}
	}
}
