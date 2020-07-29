package ex02;

import java.sql.*;

public class SQLInsertTest {
	public static Connection makeConnection()
	{
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id = "exdb";
		String password = "12345";
		Connection con = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("드라이버 적재 성공");
			con = DriverManager.getConnection(url, id, password);
			System.out.println("데이터베이스 연결 성공");
		} catch (ClassNotFoundException e) {
			System.out.println("드라이버를 찾을 수 없습니다.");
		} catch (SQLException e) {
			System.out.println("연결에 실패하였습니다.");
		}
		return con;
	}
	
	public static void main(String[] args) {
		addBook("kkk", "bbb", "2005", 35000);
	}
	
	private static void addBook(String title, String publisher, String year, int price) {
		Connection con = makeConnection();
		try {
			Statement stmt = con.createStatement();
			String s = "INSERT INTO books (book_id, title, publisher, year, price) VALUES ";
			s += "(book_no_seq.nextval, '" + title + "','" + publisher + " ','"+ year + "','"
					+ price + "')";
			System.out.println(s);
			int i = stmt.executeUpdate(s);
			if (i == 1)
				System.out.println("레코드 추가 성공");
			else
				System.out.println("레코드 추가 실패");
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			System.exit(0);
		}
	}
}


