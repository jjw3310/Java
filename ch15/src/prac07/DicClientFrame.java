package prac07;

import java.awt.Color;
import java.awt.Container;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.Socket;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JTextField;

public class DicClientFrame extends JFrame {
	private Socket socket = null;
	private JTextField eng = new JTextField(10);
	private JTextField kor = new JTextField(10);
	private JButton searchBtn = new JButton("찾기");
	private BufferedReader in = null;
	private BufferedWriter out = null;
	
	//프로그램 창 설정
	public DicClientFrame() {
		super("수동영한사전");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		Container c = getContentPane();
		c.setBackground(Color.DARK_GRAY);
		c.setLayout(new FlowLayout());
		JLabel la = new JLabel("영어");
		JLabel ja = new JLabel("한글");
		c.add(la);
		la.setForeground(Color.GREEN);
		c.add(eng);
		c.add(ja);
		ja.setForeground(Color.WHITE);
		c.add(kor);
		c.add(searchBtn);
		try {
			setupConnection();
		} catch (IOException e) {
			handleError(e.getMessage());
		}
		searchBtn.addActionListener(new MyActionListener());
		
		setSize(400,120);
		setVisible(true);
	}

	private void handleError(String string) {
		System.out.println(string);
		System.exit(1);
	}
	
	//서버 오픈
	private void setupConnection() throws IOException {
		socket = new Socket("localhost", 9993);
		System.out.println("연결됨");
		in = new BufferedReader(new InputStreamReader(socket.getInputStream()));
		out = new BufferedWriter(new OutputStreamWriter(socket.getOutputStream()));
	}
	
	class MyActionListener implements ActionListener {
		public void actionPerformed(ActionEvent e) {
			try {
				out.write(eng.getText()+"\n");
				out.write(kor.getText()+"\n");
				out.flush();
				String text = in.readLine();
				kor.setText(text);
				eng.setText(eng.getText());				
			} catch (IOException e2) {
				handleError(e2.getMessage());
			}
		}
	}
	public static void main(String[] args) {
		new DicClientFrame();
	}
}
