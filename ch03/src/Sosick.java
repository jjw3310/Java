import java.util.Scanner;

class Sosick {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int A;
        int B;
        double desum;
       
        A = scanner.nextInt();
        B = scanner.nextInt();
        desum = (double)A / (double)B;
        
        System.out.print(desum);
    }
}