import java.util.Scanner;

public class Group {
   private char type;  
   private Seat[] seats; // 현재 등급의 좌석 객체 배열
   private Scanner scanner = new Scanner(System.in);
   
   public Group(char type, int num) {
	   this.type = type;
	   seats = new Seat[num];
	   for (int i=0; i<seats.length; i++)
		   seats[i] = new Seat();
   }
   public boolean reserve() { // 현재 등급의 좌석 예약
	   int no;
	   String name;
	   show();
	   System.out.print("이름>>");
	   name = scanner.next();
	   System.out.print("번호>>");
	   no = scanner.nextInt();
	   if (no < 1 || no >= seats.length) { // 없는 좌석 입력 시 실패
		   System.out.println("잘못된 좌석번호입니다.");
		   return false;
	   }
	   if (seats[no-1].isOccupied()) { // 이미 예약된 좌석 번호
		   System.out.println("이미 예약된 좌석입니다.");
		   return false;
	   }
	   seats[no-1].reserve(name);
	   return true;
   }
   public boolean cancel() { // 현재 등급의 좌석 취소
	   show();
	   System.out.print("이름>>"); 
	   String name = scanner.next();
	   if (name != null) {
		   for (int i=0;i<seats.length; i++) {
			   if (seats[i].match(name)) {
				   seats[i].cancel();
				   return true;
			   }
		   }
		   System.out.println("예약자 이름을 찾을 수 없습니다.");
	   }
	   return false; // 예약자 이름을 찾지 못함
   }
 /*  public void time() {
	   show();
	   String time = 
	   System.out.print("예약자 성함을 입력하세요>>");
	   String name = scanner.next();
	   if (name != null) {
		   for (int i=0;i<seats.length; i++) {
			   if (seats[i].match(name)) {
				   System.out.println(name + "님의 예약시간은 " + time + "입니다.");
				   return;
			   }
		   }
	   }
   }*/
   
   public void show() { // 현재 등급의 좌석 출력
	   System.out.print(type + ">> ");
	   for (int i=0; i<seats.length; i++) {
		   if (seats[i].isOccupied())
			   System.out.print(seats[i].getName());
		   else
			   System.out.print("---");
		   System.out.print(" ");
	   }
	   System.out.println();
   }
}
