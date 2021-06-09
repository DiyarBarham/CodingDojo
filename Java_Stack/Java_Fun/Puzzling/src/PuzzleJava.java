import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;

public class PuzzleJava {

	private static final Object[] String = null;
	public static void main(String[] args) {
		int[] arr = {3,5,1,2,7,9,8,13,25,32};
		ArrayList<Object> list = new ArrayList<Object>();
		list = greater(arr);
		ArrayList<String> namearr = new ArrayList<String>();
		namearr.add("Nancy");
		namearr.add("Jinichi");
		namearr.add("Fujibayashi");
		namearr.add("Momochi");
		namearr.add("Ishikawa");
		ArrayList<Object> list2 = new ArrayList<Object>();
		list2 = names(namearr);
		ArrayList<Character> array = new ArrayList<Character>();
		for(int i = 0; i < 26; i++){
			char x =(char)(97 + i); 
			array.add(x);
		}
		latters(array);
		ArrayList<Integer> ar = new ArrayList<Integer>();
		ar.addAll(random());
		
		stringss();
		
	}
	static ArrayList<Object> greater(int[] arr) {
		int sum = 0;
		ArrayList<Object> list = new ArrayList<Object>();
		for (int i =0; i< arr.length; i++) {
			sum+= arr[i];
			if(arr[i]>10) {
				list.add(arr[i]);
			}
		}
		System.out.println(sum);
		
		return list;
	}
	static ArrayList<Object> names(List<String> arr){
		ArrayList<Object> list = new ArrayList<Object>();
		Collections.shuffle(arr);
		for( int i =0; i <list.size(); i++) {
			System.out.println(arr.get(i));
			if (arr.get(0).length()>5) {
				list.add(arr.get(i));
			}
		}
		return list;
	}
	static void latters(List<Character> arr) {
		Collections.shuffle(arr);
		System.out.println(arr.get(25));
		System.out.println(arr.get(0));
		if(arr.get(0) =='a' || arr.get(0) =='i' || arr.get(0) =='o' || arr.get(0) =='e' || arr.get(0) =='u') {
			System.out.println("the first character is a vowel!");
		}
	}
	static ArrayList<Integer> random(){
		ArrayList<Integer> array = new ArrayList<Integer>();
		Random ran = new Random();
		for (int i =0; i<10; i++) {
		int x = 55+ran.nextInt(Math.abs(100-55));
		array.add(x);}
        Collections.sort(array);
        System.out.println(array);
        System.out.println(array.get(0));
        System.out.println(array.get(9));
		return array;
	}
	static void stringss() {
		Random ran = new Random();
		String[] ss = {"","","","","","","","","",""};
		int x;
		for( int i=0; i<10; i++	) {
			StringBuilder s = new StringBuilder();
			for (int j = 0; j < 5; j++) {
				x = 97+ran.nextInt(Math.abs(26));
				char c = (char) x;
				s.append(c);
			}
			ss[i] = s.toString();
			System.out.println(ss[i]);
		}
	}
}
