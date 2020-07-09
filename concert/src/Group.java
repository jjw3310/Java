import java.util.Scanner;

public class Group {
   private char type;  
   private Seat[] seats; // ���� ����� �¼� ��ü �迭
   private Scanner scanner = new Scanner(System.in);
   
   public Group(char type, int num) {
	   this.type = type;
	   seats = new Seat[num];
	   for (int i=0; i<seats.length; i++)
		   seats[i] = new Seat();
   }
   public boolean reserve() { // ���� ����� �¼� ����
	   int no;
	   String name;
	   show();
	   System.out.print("�̸�>>");
	   name = scanner.next();
	   System.out.print("��ȣ>>");
	   no = scanner.nextInt();
	   if (no < 1 || no >= seats.length) { // ���� �¼� �Է� �� ����
		   System.out.println("�߸��� �¼���ȣ�Դϴ�.");
		   return false;
	   }
	   if (seats[no-1].isOccupied()) { // �̹� ����� �¼� ��ȣ
		   System.out.println("�̹� ����� �¼��Դϴ�.");
		   return false;
	   }
	   seats[no-1].reserve(name);
	   return true;
   }
   public boolean cancel() { // ���� ����� �¼� ���
	   show();
	   System.out.print("�̸�>>"); 
	   String name = scanner.next();
	   if (name != null) {
		   for (int i=0;i<seats.length; i++) {
			   if (seats[i].match(name)) {
				   seats[i].cancel();
				   return true;
			   }
		   }
		   System.out.println("������ �̸��� ã�� �� �����ϴ�.");
	   }
	   return false; // ������ �̸��� ã�� ����
   }
 /*  public void time() {
	   show();
	   String time = 
	   System.out.print("������ ������ �Է��ϼ���>>");
	   String name = scanner.next();
	   if (name != null) {
		   for (int i=0;i<seats.length; i++) {
			   if (seats[i].match(name)) {
				   System.out.println(name + "���� ����ð��� " + time + "�Դϴ�.");
				   return;
			   }
		   }
	   }
   }*/
   
   public void show() { // ���� ����� �¼� ���
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
