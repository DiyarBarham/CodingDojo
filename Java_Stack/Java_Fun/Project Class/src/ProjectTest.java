
public class ProjectTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Project p = new Project();
		Project p2 = new Project("code");
		Project p3 = new Project("coding", "coding prject");
		System.out.println(p.ElevatorPitch());
		System.out.println(p2.ElevatorPitch());
		System.out.println(p3.ElevatorPitch());
	}

}
