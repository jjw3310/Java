package ex01;

import java.net.URL;

public class UrlInfo {
	public static void main(String[] args) {
		try {
			URL url = new URL (
					"ftp://www.dailian.co.kr:21/news/news_view.htm?id=304770");
			System.out.println("프로토콜:"+url.getProtocol());
			System.out.println("포트번호:"+url.getPort());
			System.out.println("호스트:"+url.getHost());
			System.out.println("파일:"+url.getFile());
			System.out.println("기타정보:"+url.toExternalForm());
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

}
