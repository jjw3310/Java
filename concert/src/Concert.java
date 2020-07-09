import java.util.Scanner;

public class Concert {
	private String hallName; // �ܼ�Ʈ �ü� �̸�
	private Group[] group = new Group[5]; // �¼� �迭 ����
	private String[] time = new String[4]; // ����ð� �迭 ����
	private Scanner scanner = new Scanner(System.in); // �Է� �޴� ȯ�� ����

	public Concert(String hallName) {  // �¼� ���� �޼ҵ�
		this.hallName = hallName;
		group[0] = new Group('S', 10); // S Ÿ�� �¼� ����
		group[1] = new Group('A', 10); // A Ÿ�� �¼� ����
		group[2] = new Group('B', 10); // B Ÿ�� �¼� ����
		group[3] = new Group('C', 10); // C Ÿ�� �¼� ����
		group[4] = new Group('D', 10); // D Ÿ�� �¼� ����
		time[0] = "08:00"; // ����ð� �迭 ��ġ
		time[1] = "12:00";
		time[2] = "16:00";
		time[3] = "20:00";
	}
	
	private void reserve() { // �ܼ�Ʈ ���� �޼ҵ�
		System.out.print("�¼����� S(1), A(2), B(3), C(4), D(5)>>");
		int type = scanner.nextInt();
		if (type < 1 || type > 5) {
			System.out.println("�߸��� �¼� Ÿ���Դϴ�.");
			return;
		}
		group[type-1].reserve();
		System.out.print("���Ͻô� ���� �ð��� �����ϼ���.\n08:00(1), 12:00(2), 16:00(3), 20:00(4), ���(5)");
		int number = scanner.nextInt();  // ����ð� ����
		if (number < 1 || number > 5) {
			System.out.println("�˼��մϴ�. �ð��� ã�� �� �����ϴ�.\n�ٽ� �������ּ���.");
			reserve();
		}
		while (number != 5) { 
			switch (number) {
				case 1:	
//					String time = time[0];
					System.out.println("�����Ͻ� �ð��� " + time[0] + "�Դϴ�.");
					return;
				case 2:	
//					time = time[1];
					System.out.println("�����Ͻ� �ð��� " + time[1] + "�Դϴ�.");
					return;
				case 3:	
					System.out.println("�����Ͻ� �ð��� " + time[2] + "�Դϴ�.");
					return;
				case 4:	
					System.out.println("�����Ͻ� �ð��� " + time[3] + "�Դϴ�.");
					return;
				default:
					System.out.println("�߸� �Է��ϼ̽��ϴ�.");
			}
		}
		
	}
	
	private void search() { // �ܼ�Ʈ ���� �˻�
		for (int i=0;i<group.length; i++)
			group[i].show();
		System.out.println("<<<��ȸ�� �Ϸ��Ͽ����ϴ�.>>>");		
	}
	
	private void cancel() { // �ܼ�Ʈ ���� ���
		System.out.print("�¼� S:1, A:2, B:3, C:4, D:5>>");
		int type = scanner.nextInt();
		if (type < 1 || type > 5) {
			System.out.println("�߸��� �¼� Ÿ���Դϴ�.");
			return;
		}
		group[type-1].cancel();
	}
	
	public void run() { // �ܼ�Ʈ ����/���/�˻� �� 
		System.out.println(hallName + " ���� �ý����Դϴ�.");
		int choice = 0;
		while (choice != 4) { 
			System.out.print("����:1, ��ȸ:2, ���:3, ������:4>>");
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
					System.out.println("�߸� �Է��ϼ̽��ϴ�.");
			}
		}
	}
}
