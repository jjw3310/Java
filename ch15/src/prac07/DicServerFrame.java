package prac07;

import java.awt.*;
import java.awt.event.*;
import java.io.*;
import java.net.*;
import java.util.*;

import javax.swing.*;

public class DicServerFrame extends JFrame {
	private JTextField eng = new JTextField(10);
	private JTextField kor = new JTextField(10);
	private JButton saveBtn = new JButton("저장");
	private JButton searchBtn = new JButton("찾기");
	private JTextArea ta = new JTextArea(7, 25);
	private HashMap<String, String> dic = new HashMap<String, String>(); //단어 키와 밸류
	private HashMap<String, String> dio = new HashMap<String, String>();
	public DicServerFrame() {
		super("Dic Server");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setSize(350, 300);
		Container c = getContentPane();
		c.setLayout(new FlowLayout());
		c.setBackground(Color.GRAY);
		c.add(new JLabel("영어"));
		c.add(eng);
		c.add(new JLabel("한글"));
		c.add(kor);
		c.add(saveBtn);
		c.add(searchBtn);
		
		//사전에 단어 추가
		saveBtn.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				ta.append("삽입(" + eng.getText() + "," + kor.getText() + ")\n");
				dic.put(eng.getText(), kor.getText());
				dio.put(kor.getText(), eng.getText());
			}
		});
		//단어 입력 시 영어 또는 한글로 번역 버튼
		searchBtn.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
					String s = dic.get(eng.getText());
					String a = dio.get(kor.getText());
					if(s == null)
						s = "없음";
					if(a == null)
						a = "없음";
					kor.setText(s);
					eng.setText(a);
			}
		});
		
		c.add(new JScrollPane(ta));
		setVisible(true);
		
		startService();
	}
	
	private void startService() {
		ServerThread server = new ServerThread();
		server.start();
	}
	
	private void handleError(String string) {
		System.out.println(string);
		System.exit(1);
	}
	
	private class ServerThread extends Thread {
		public void run() {
			ServerSocket listener = null;
			Socket socket = null;
			
			try {
				listener = new ServerSocket(9993);
			} catch (IOException e1) {
				handleError(e1.getMessage());
			}
			while(true) {
				try {
					socket = listener.accept();
					
					ServiceThread th = new ServiceThread(socket);
					th.start();
				}
				catch(IOException e) {
					handleError(e.getMessage());
					break;
				}
			}
			try {
				listener.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	class ServiceThread extends Thread {
		private Socket socket;
		public ServiceThread(Socket socket) {
			this.socket = socket;
		}
		public void run() {
			try {
				BufferedReader in = new BufferedReader(
						new InputStreamReader(socket.getInputStream()));
				BufferedWriter out = new BufferedWriter(
						new OutputStreamWriter(socket.getOutputStream()));
				
				while(true) {
					String engText = in.readLine();
					String korText = dic.get(engText);
					if(korText == null)
						korText = "없음";
					
					out.write(korText+"\n");
					out.flush();
					
					ta.append("검색 (" + engText + ")\n");
					int pos = ta.getText().length();
					ta.setCaretPosition(pos);
				}
			}
			catch(IOException e) {
				return;
			}
		}
	}
	public static void main(String[] args) {
		new DicServerFrame();
	}
}