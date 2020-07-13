package ex00;

import java.awt.*;
import java.awt.event.*;
import java.io.*;
import java.util.StringTokenizer;
import javax.swing.*;

public class MenuItemActionListener extends JFrame {
	JTextArea ta = new JTextArea();
	
	MenuItemActionListener() {
		super("파일 저장");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		createMenu();
		add(new JScrollPane(ta));
		setSize(300, 200);
		setVisible(true);
	}
	
	private void createMenu() {
		JMenu fileMenu = new JMenu("파일");
		JMenuItem save = new JMenuItem("저장");
		fileMenu.add(save);
		save.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				if(ta.getText().length() == 0) {
					JOptionPane.showMessageDialog(MenuItemActionListener.this,
					"입력된 내용이 없습니다.", "Warning", JOptionPane.WARNING_MESSAGE);
					return;
				}
				String fileName = JOptionPane.showInputDialog
						(MenuItemActionListener.this, "저장할 파일명을 입력하세요.");
				if(fileName == null) {
					JOptionPane.showMessageDialog(MenuItemActionListener.this,
							"파일을 저장하지 않습니다.",
							"Warning", JOptionPane.WARNING_MESSAGE);
					return;
				}
				try {
					FileWriter fout = new FileWriter(fileName);
					String t = ta.getText();
					StringTokenizer st = new StringTokenizer(ta.getText(), "\n");
					while(st.hasMoreTokens()) {
						fout.write(st.nextToken());
						fout.write("\r\n");
					}
					fout.close();
				} catch (IOException e1) {}
			}
		});
		JMenuBar mb = new JMenuBar();
		mb.add(fileMenu);
		setJMenuBar(mb);
	}
	public static void main(String[] args) {
		new MenuItemActionListener();
	}
}