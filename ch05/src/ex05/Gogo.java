package ex05;

import java.util.Scanner;

class Gogo {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n;
        int ans;
        n = scanner.nextInt();
        
        for (int i=1; i<10; i++) {
            ans = n * i;
            System.out.println(n + " * " + i + " = " + ans);
        }
        scanner.close();
    }
}