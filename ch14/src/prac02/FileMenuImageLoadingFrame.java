package prac02;

import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.filechooser.FileNameExtensionFilter;

public class FileMenuImageLoadingFrame extends JFrame {
	public FileMenuImageLoadingFrame() {
		super("메뉴로 배경 이미지 로딩하기");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setContentPane(new MyPanel());
		createMenu();
		
		setSize(400, 400);
		setVisible(true);
	}
	
	private void createMenu() {
		JMenu fileMenu = new JMenu("파일");
		JMenuItem openItem = new JMenuItem("열기");
		fileMenu.add(openItem);
		JMenuBar mb = new JMenuBar();
		mb.add(fileMenu);
		setJMenuBar(mb);
	}
	
	class MyPanel extends JPanel {
		private Image bgImg = null;
		
		public void setBgImage(Image bgImg) {
			JPanel panel = new JPanel();
	}
	
	class OpenActionListener implements ActionListener {
		private JFileChooser chooser;
		public OpenActionListener() {
			chooser = new JFileChooser();
		}
		
		public void actionPerformed(ActionEvent e) {
			FileNameExtensionFilter filter = new FileNameExtensionFilter(
					"JPG Images", "jpg");
			chooser.setFileFilter(filter);
			int ret = chooser.showOpenDialog(null);
			if(ret != JFileChooser.APPROVE_OPTION) {
				JOptionPane.showMessageDialog(null, "파일을 선택하지 않았습니다.");
				return;
			}
			String filePath = chooser.getSelectedFile().getPath();
			MyPanel p = (MyPanel)getContentPane();
			ImageIcon icon = new ImageIcon(filePath);
			p.setBgImage(icon.getImage());
			}
		}
	}
	public static void main(String[] args) {
		new FileMenuImageLoadingFrame();
	}

}
