package ex16;

import java.awt.Container;
import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class ButtonAndImageLabelFrame extends JFrame {
	private JLabel imageLabel;
	private ImageIcon[] images = new ImageIcon[4];
	int currentId;
	
	public ButtonAndImageLabelFrame() {
		setTitle("Open Challenge 11");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		
		Container c = getContentPane();
		c.setLayout(new BorderLayout());
		
		for(int i=0; i<images.length; i++)
			images[i] = new ImageIcon("images/image" + i + ".jpg");
		
		currentId = 0;
		imageLabel = new JLabel(images[currentId]); //현재 선택된 이미지를 레이블에 출력 
		c.add(imageLabel, BorderLayout.CENTER); //이미지 레이블을 CENTER에 부착
		c.add(new MenuPanel(), BorderLayout.SOUTH); //2개의 화살표 버튼을 가진 MenuPanel 부착
		
		setSize(300, 400);
		setVisible(true);
	}
	
	// 두 개의 화살표 버튼을 가진 메뉴 패널
	class MenuPanel extends JPanel {
		public MenuPanel() {
			setBackground(Color.GRAY);
			ImageIcon leftIcon = new ImageIcon("images/left.png"); //왼쪽 화살표 이미지 로딩
			ImageIcon rightIcon = new ImageIcon("images/right.png"); // 오른쪽 화살표 이미지 로딩
			JButton leftBtn = new JButton(leftIcon); //왼쪽 버튼 생성
			JButton rightBtn = new JButton(rightIcon); // 오른쪽 버튼 생성
			
			add(leftBtn);
			add(rightBtn);
			
			//왼쪽 화살표 버튼에 Action 리스너 달기
			leftBtn.addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent e) {
					currentId --;
					currentId += images.length;
					currentId %= images.length;
					imageLabel.setIcon(images[currentId]);
				}
			});
			
			rightBtn.addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent e) {
					currentId ++;
					currentId %= images.length;
					imageLabel.setIcon(images[currentId]);
				}
			});
		}
	}
	public static void main(String[] args) {
		new ButtonAndImageLabelFrame();
	}
}
