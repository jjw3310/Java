package ex00;

import java.util.*;

public class ListMember {
	public static void main(String[] args) {
		ArrayList<Member> list=new ArrayList<>();
		//List<Member> list=new ArrayList<>();
		
		Member m1=new Member();
		m1.setName("김철수");
		m1.setUserid("kim");
		m1.setPasswd("1234");
		m1.setTel("02-999-8888");
		m1.setEmail("kim@gmail.com");
		list.add(m1);
		
		Member m2=new Member();
		m2.setName("홍길동");
		m2.setUserid("hong");
		m2.setPasswd("2222");
		m2.setTel("02-988-5555");
		m2.setEmail("hong@daum.net");
		list.add(m2);
		
		System.out.println(
				"이름\t아이디\t비번\t전화번호\t\t이메일");
		for(int i=0; i<list.size(); i++) {
			Member m=list.get(i);
			System.out.println(m.getName()+"\t"+m.getUserid() +
					"\t" + m.getPasswd() + "\t" + m.getTel()+"\t"
					+m.getEmail());
		}
	}

}
