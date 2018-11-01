package pl.karas.auctionquest.datecalc;

import org.joda.time.DateTime;
import org.joda.time.Days;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;

public class Datec {
	String[] freeDays = new String[] {
	"2018/11/01",	
	"2018/11/11",
	"2018/11/25",
	"2018/11/26",
	"2019/01/01"	,
	"2019/01/06"	,
	"2019/04/21"	,
	"2019/04/22"	,
	"2019/05/01"	,
	"2019/05/03"	,
	"2019/6/09"	,
	"2019/6/20"	,
	"2019/8/15"	,
	"2019/11/01",
	"2019/11/11",
	"2019/12/25",
	"2019/12/26",
	"2018/11/01"
	};
	
	private String dateStart;
	private String dateStop;
	private String result;
	private DateTime dt1;
	private DateTime dt2;
	private String diffDays;
	private int diffDaysi;

	private boolean visWeekend;
	private boolean visSaint;
	
	
	public int getDiffDaysi() {
		return diffDaysi;
	}

	public void setDiffDaysi(int diffDaysi) {
		this.diffDaysi = diffDaysi;
	}

	public void setResult() {
		//Parse string to DateTime
				visWeekend=true;
				visSaint=true;
		
				
				if((dateStart)==null) {
					result ="-";}
				
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
				
					
					isWeekend();
					
					
					
					
					/*
					while((!visWeekend)&&(!visSaint)) {
						
					if(!isAWeekend()) {visWeekend=false;};
	
					if(!isASaintDay(dt1.toString(formatter))) {visSaint=false;dt1=dt1.plusDays(1);};
					
					if(isAWeekend()) {visWeekend=true;};
					}
					*/
					result=dt1.toString(formatter);		
				}
				
			

				
	}

	private void isWeekend() {
		if(dt1.getDayOfWeek()==6) {dt1=dt1.plusDays(2);}
		if(dt1.getDayOfWeek()==7) {dt1=dt1.plusDays(1);}
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
