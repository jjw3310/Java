package Ex;

import java.awt.*;
import javax.swing.*;

public class ComboBoxEx extends JFrame {
	private String[] fruits = {"apple", "banana", "kiwi", "mango", "pear",
			"peach", "berry", "strawberry", "blackberry"};
	private String[] names = {"kitae", "jaemoon", "hyosoo", "namyun"};
	private JTextField tf = new JTextField(5);
	private Vector<String> v = new Vector<String>();
	
	public ComboBoxEx() {
		setTitle("콤보박스 만들기 예제");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		Container c = getContentPane();
		c.setLayout(new FlowLayout());
		
		JComboBox<String> strCombo = new JComboBox<String>(fruits);
		
		c.add(strCombo);
		
		c.add(tf);
		JComboBox<String> nameCombo = new JComboBox<String>();
		for (int i=0; i<names.length; i++) {
			nameCombo.addItem(names[i]);
		}
		
		c.add(nameCombo);
		setSize(300, 300);
		setVisible(true);
	}
	public static void main(String[] args) {
		new ComboBoxEx();
	}
}
