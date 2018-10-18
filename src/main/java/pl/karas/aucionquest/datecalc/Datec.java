package pl.karas.aucionquest.datecalc;

import org.joda.time.DateTime;
import org.joda.time.Days;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;

public class Datec {
	String[] freeDays = new String[] {
	"2018/11/1"	,	
	"2018/11/11"	,
	"2018/11/25"	,
	"2018/11/26"	,
	"2019/1/1"	,
	"2019/1/6"	,
	"2019/4/21"	,
	"2019/4/22"	,
	"2019/5/1"	,
	"2019/5/3"	,
	"2019/6/9"	,
	"2019/6/20"	,
	"2019/8/15"	,
	"2019/11/1"	,
	"2019/11/11",
	"2019/12/25",
	"2019/12/26",
	};
	
	private String dateStart;
	private String dateStop;
	private String result;
	private DateTime dt1;
	private DateTime dt2;
	private String diffDays;
	private int diffDaysi;
	
	public int getDiffDaysi() {
		return diffDaysi;
	}

	public void setDiffDaysi(int diffDaysi) {
		this.diffDaysi = diffDaysi;
	}

	public void setResult() {
		//Parse string to DateTime
				if((dateStart)==null) {result ="hhyyhy";}
				else {
				dt1 = formatter.parseDateTime(dateStart);
				dt2 = formatter.parseDateTime(dateStop);
				//Calc Period between start date and end
				diffDays=Days.daysBetween(dt1, dt2).toString();
				//Trim String
				diffDays=diffDays.replace("P","");
				diffDays=diffDays.replace("D","");
				//String to int
				diffDaysi=Integer.parseInt(diffDays);
				if(diffDaysi%2==0) {diffDaysi/=2;}
				else {diffDaysi=(diffDaysi/2)+1;}
				
				dt1=dt1.plusDays(diffDaysi);
				if(dt1.getDayOfWeek()==6) {dt1=dt1.plusDays(2);}
				if(dt1.getDayOfWeek()==7) {dt1=dt1.plusDays(1);}
				
				result=dt1.toString(formatter);		

				}
				
	}

	public Datec(){}
	
	public String getDateStart() {
		return dateStart;
	}

	public void setDateStart(String dateStart) {
		this.dateStart = dateStart;
	}

	public String getDateStop() {
		return dateStop;
	}

	public void setDateStop(String dateStop) {
		this.dateStop = dateStop;
	}

	public String getResult() {
		
		return this.result;
	}
	
	
	public String calcRest() {
		
	
				return result;
	}

	DateTimeFormatter formatter =DateTimeFormat.forPattern("yyyy/MM/dd");
	

	
	
	
	
}
