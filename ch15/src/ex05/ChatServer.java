package ex05;

import java.awt.BorderLayout;
import java.awt.Container;
import java.awt.event.*;
import java.io.*;
import java.net.*;
import javax.swing.*;

public class ChatServer extends JFrame implements ActionListener {
	private BufferedReader in = null;
	private BufferedWriter out = null;
	private ServerSocket listener = null;
	private Socket socket = null;
	private Receiver receiver;
	private JTextField sender;
	
	public ChatServer() {
		setTitle("서버 채팅 창");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		Container c = getContentPane();
		
		c.setLayout(new BorderLayout());
		receiver = new Receiver();
		receiver.setEditable(false);
		
		sender = new JTextField();
		sender.addActionListener(this);
		
		add(new JScrollPane(receiver), BorderLayout.CENTER);
		add(sender, BorderLayout.SOUTH);
		
		setSize(400, 200);
		setVisible(true);
		
		try {
			setupConnection();
		} catch (IOException e) {
			handleError(e.getMessage());
		}
		Thread th = new Thread(receiver);
		th.start();
	}
	private void setupConnection() throws IOException {
		listener = new ServerSocket(7777);
		socket = listener.accept();
		receiver.append("클라이언트로부터 연결 완료");
		int pos = receiver.getText().length();
		receiver.setCaretPosition(pos);
		
		in = new BufferedReader(new InputStreamReader(socket.getInputStream()));
		out = new BufferedWriter(new OutputStreamWriter(socket.getOutputStream()));
	}
	private static void handleError(String string) {
		System.out.println(string);
		System.exit(1);
	}
	private class Receiver extends JTextArea implements Runnable {
		public void run() {
			String msg = null;
			while (true) {
				try {
					msg = in.readLine();
				} catch (IOException e) {
					handleError(e.getMessage());
				}
				this.append("\n 클라이언트 : " + msg);
				int pos = this.getText().length();
				this.setCaretPosition(pos);
			}
		}
	}
	
	public void actionPerformed(ActionEvent e) {
		if (e.getSource() == sender) {
			String msg = sender.getText();
			try {
				out.write(msg+"\n");
				out.flush();
				
				receiver.append("\n서버 : " + msg);
				int pos = receiver.getText().length();
				receiver.setCaretPosition(pos);
				sender.setText(null);
			} catch (IOException e1) {
				handleError(e1.getMessage());
			}
		}
	}
	
	public static void main(String[] args) {
		new ChatServer();
	}
}