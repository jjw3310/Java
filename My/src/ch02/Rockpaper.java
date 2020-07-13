package ch02;

import java.util.*;

public class Rockpaper {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		
		System.out.println("가위바위보 게임입니다. 가위, 바위, 보 중에서 입력하세요");
		System.out.print("철수 >> ");
		String index = scanner.next();
		while(true) {
			if(index.equals("그만"))
				break;
			System.out.print("영희 >> ");
			String other = scanner.next();
			if(index.equals("가위")) {
				if(other.equals("바위")) {
					System.out.println("영희가 이겼습니다.");
					break;
					}
				else if(other.equals("가위")) {
					System.out.println("비겼습니다.");
					break;
				}
				else if(other.equals("보")) {
					System.out.println("철수가 이겼습니다.");
					break;
				}
				else {
					System.out.println("오류입니다.당당");
					break;
				}
					
			} else if(index.equals("바위")) {
				if(other.equals("바위")) {
					System.out.println("비겼습니다.");
					break;
					}
				else if(other.equals("가위")) {
					System.out.println("철수가 이겼습니다.");
					break;
				}
				else if(other.equals("보")) {
					System.out.println("영희가 이겼습니다.");
					break;
				}
			} else if(index.equals("보")) {
				if(other.equals("보")) {
					System.out.println("비겼습니다.");
					break;
					}
				else if(other.equals("바위")) {
					System.out.println("철수가 이겼습니다.");
					break;
				}
				else if(other.equals("가위")) {
					System.out.println("영희가 이겼습니다.");
					break;
				}
			} else {
				System.out.println("오류입니다.");
				break;
			}
		}
			
	}
}

				
				
				
				