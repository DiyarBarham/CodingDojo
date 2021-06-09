public class StringManipulator {
	public String trimAndConcat(String str1, String str2){
		str1 = str1.trim();
		str2 = str2.trim();
		String str = str1.concat(str2);
		return str;
	}
	public Integer getIndexOrNull(String str, char letter) {
		int x = str.indexOf(letter);
		if (x == -1) {
			return null;
		}
		
		return x;
	}
	public Integer getIndexOrNull(String str, String letter) {
		int x = str.indexOf(letter);
		if (x == -1) {
			return null;
		}
		
		return x;
	}
	public String concatSubstring(String str1, int num1, int num2, String str2) {
		String str = str1.substring(num1, num2) + str2;
		return str;
	}
}
