import java.util.ArrayList;
import java.util.Iterator;

public class BasicJava {

	public static void main(String[] args) {
		printer(255);
		odd(255);
		sum(255);
		int[] a = {1,3,5,7,9,13};
		arr(a);
		int[] b = {1,3,5,7,9,13};
		max(b);
		int[] c = {1,3,5,7,9,13};
		avg(c);
		oarr(255);
		int[] d = {1,3,5,7,9,13};
		bigger(d, 3);
		int[] e= {1, 5, 10, -2};
		mult(e);
		int[] f= {1, 5, 10, -2};
		neg(f);
		int[] g= {1, 5, 10, -2};
		int[] all = new int[3];
		all= all(g);
		for (int i = 0; i<all.length;i++) {
			System.out.println(all[i]);
		}
		int[] h= {1, 5, 10, -2};
		shift(h);
	}
	static void printer(int num) {
		for (int i=1; i<=num; i++) {
			System.out.println(i);
		}
	}
	
	static void odd(int num) {
		for (int i=1; i<=num; i+=2) {
			System.out.println(i);
		}
	}
	static void sum(int num) {
		int sum=0;
		for (int i=0; i<=num; i++) {
			sum+=i;
			System.out.println("New Number: "+i+" Sum: "+sum);
		}
	}
	static void arr(int[] a) {
		for (int i=0; i< a.length; i++) {
			System.out.println(a[i]);
		}
	}
	static void max(int[] b) {
		int max = b[0];
		for (int i=0; i< b.length; i++) {
			if (b[i] > max) {
			max = b[i];
		}}
		System.out.println(max);
	}
	static void avg(int[] c) {
		double avg = 0;
		for (int i=0; i< c.length; i++) {
			avg += c[i];
		}
		avg = avg/ c.length;
		System.out.println(avg);
	}
	static void oarr(int num) {
		ArrayList<Object> list = new ArrayList<Object>();
		for (int i=1; i<=num; i+=2) {
			list.add(i);
		}
		System.out.println(list);
	}
	static void bigger(int[] d, int x) {
		int max = 0;
		for (int i=0; i< d.length; i++) {
			if (d[i] > x) {
			max +=1;
		}}
		System.out.println(max);
	}
	static void mult(int[]e) {
		for(int i=0; i<e.length; i++) {
			e[i] = e[i]*e[i];
			System.out.print(e[i]+ ", ");
		}
		System.out.println();
	}
	static void neg(int[]f) {
		for(int i=0; i<f.length; i++) {
			if(f[i]<0) {
				f[i] = 0;
			}
			System.out.print(f[i]+ ", ");
		}
		System.out.println();

	}
	static int[] all(int[]f) {
		int [] all = {f[0], f[0], f[0]};
		for(int i=0; i<f.length; i++) {
			if(f[i]> all[0]) {
				all[0]=f[i];
			} else if(f[i]< all[1]) {
				all[1] = f[i];
			}
			all[2] +=f[i];
		}
		all[2]  /= f.length;
		return all;
	}
	static void shift(int[] h) {
		for (int i=1; i< h.length; i++) {
			h[i-1] = h[i];
		}
		h[h.length-1] = 0;
		for(int i=0; i<h.length; i++) {
			System.out.println(h[i]);
		}
	}
	
}
