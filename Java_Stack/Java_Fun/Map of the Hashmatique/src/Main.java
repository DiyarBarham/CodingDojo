import java.util.HashMap;
import java.util.Set;
public class Main {
	public static void main(String[] args) {
		HashMap<String, String> Hashmatique = new HashMap<String, String>();
		Hashmatique.put("a", "asd");
		Hashmatique.put("b", "asdasd");
		Hashmatique.put("c", "asdasdasd");
		Hashmatique.put("d", "asdasdasdasd");
		Set<String> keys = Hashmatique.keySet();
        for(String key : keys) {
            System.out.println(key+": "+Hashmatique.get(key));
        }
	}
}
