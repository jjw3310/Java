package prac01;

import javax.swing.*;
import java.awt.*;

public class SimpleMenuFrame extends JFrame {
	public SimpleMenuFrame() {
		super("메뉴 만들기");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		
		createMenu();
		setSize(300, 200);
		setVisible(true);
	}
	private void createMenu() {
		JMenu fileMenu = new JMenu("파일");
		JMenu edit = new JMenu("편집");
		JMenu view = new JMenu("보기");
		JMenu input = new JMenu("입력");
		JMenu help = new JMenu("도움말");
		
		JMenuItem index = new JMenuItem("화면확대");
		view.add(index);
		view.add(new JMenuItem("쪽윤곽"));
		
		JMenuBar mb = new JMenuBar();
		
		mb.add(fileMenu);
		mb.add(edit);
		mb.add(view);
		mb.add(input);
		mb.add(help);

		help.add(new JMenuItem("도움말 보기"));
		help.add(new JMenuItem("피드백 보내기"));
		help.addSeparator();
		help.add(new JMenuItem("메모장 정보"));
		
		setJMenuBar(mb);
	}
	public static void main(String[] args) {
		new SimpleMenuFrame();
	}
}