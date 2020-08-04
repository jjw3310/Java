package prac04;

import java.awt.*;
import java.awt.event.*;
import java.io.*;
import java.net.*;
import javax.swing.*;

public class SpellCheckerClientFrame extends JFrame {
	private JTextField wordTf = new JTextField(7);
	private JLabel resLabel = new JLabel("체크 결과");
	private Socket socket = null;
	private BufferedReader in = null;
	private BufferedWriter out = null;;
	
	public SpellCheckerClientFrame() {
		super("스펠체크 클라이언트");
		setSize(300, 100);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		Container c = getContentPane();
		c.setLayout(new FlowLayout());
		c.add(new JLabel("단어 입력"));
		c.add(wordTf);
		c.add(resLabel);
		
		setVisible(true);
		
		setupConnection();
		
		wordTf.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				JTextField tf = (JTextField)e.getSource();
				try {
					String word = tf.getText().trim();
					if(word.length() == 0)
						return;
					
					out.write(word + "\n");
					out.flush();
					
					String result = in.readLine();
					resLabel.setText(word + "는 " + result);
				} catch (IOException e1) {
					System.out.println("클라이언트 : 서버로부터 연결 종료");
					return;
				}
			}
		});
	}
	public void setupConnection() {
		try {
			socket = new Socket("localhost", 9995);
			in = new BufferedReader(new InputStreamReader(socket.getInputStream()));
			out = new BufferedWriter(new OutputStreamWriter(socket.getOutputStream()));
		} catch(UnknownHostException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	public static void main(String[] args) {
		new SpellCheckerClientFrame();
	}
}
