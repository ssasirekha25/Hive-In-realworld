import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;


public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		
		   try {
				//Weekdays s=new Weekdays();

    		SimpleDateFormat ft = new SimpleDateFormat ("yyyy/MM/dd");
			Date date2 = ft.parse("2016/07/1");
			Date date1 = ft.parse("2016/07/7");

			String k = ft.format(date2);
			int a = Weekdays.getWorkingDaysBetweenTwoDates(date1, date2);
			System.out.println(a);

		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		//System.out.println(ft.format(k));
		//a=s.getWorkingDaysBetweenTwoDates(, '2017-05-20');
		//int a = s.getWorkingDaysBetweenTwoDates(k, k);
		//System.out.println(a);
	}

}
