public class Main {

	public static void main(String[] args) {
		StringManipulator manipulator = new StringManipulator();
		String str = manipulator.trimAndConcat("    Hello     ","     World    ");
		System.out.println(str);
		
		StringManipulator manipulator1 = new StringManipulator();
		char letter = 'o';
		Integer a = manipulator1.getIndexOrNull("Coding", letter);
		Integer b = manipulator1.getIndexOrNull("Hello World", letter);
		Integer c = manipulator1.getIndexOrNull("Hi", letter);
		System.out.println(a); // 1
		System.out.println(b); // 4
		System.out.println(c); // null
		
		StringManipulator manipulator11 = new StringManipulator();
		String word = "Hello";
		String subString = "llo";
		String notSubString = "world";
		Integer a1 = manipulator11.getIndexOrNull(word, subString);
		Integer b1 = manipulator11.getIndexOrNull(word, notSubString);
		System.out.println(a1); // 2
		System.out.println(b1); // null
		
		StringManipulator manipulator111 = new StringManipulator();
		String word1 = manipulator111.concatSubstring("Hello", 1, 2, "world");
		System.out.println(word1); // eworld
	}

}
