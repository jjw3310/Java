public class Seat {
   private String name;
  // private String time;
   public Seat() {
	   name = null;
   }
   public String getName() {
	   return name;
   }
   public void cancel() {
	   name = null;
   }/*
   public void reTime(String time) {
	   this.time = time;
   }*/
   public void reserve(String name) {
	   this.name = name;
   }
   public boolean isOccupied() {
	   if (name == null) // �¼��� ����Ǿ� ������ true ��ȯ
		   return false;
	   else 
		   return true;
   }
   public boolean match(String name) { // �Է��� �̸����� ���� �Ǿ������� true ��ȯ
	   return(name.equals(this.name));
   }
}
