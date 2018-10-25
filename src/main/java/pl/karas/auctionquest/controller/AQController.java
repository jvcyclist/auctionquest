package pl.karas.auctionquest.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;


import pl.karas.auctionquest.datecalc.Datec;

@Controller
@RequestMapping("/")

public class AQController {


@RequestMapping("/calcDate")
public String calcDate(@ModelAttribute Datec datec) {
	datec.setResult();
	
	return "date";
}

@RequestMapping("/calcDates")
public String calcDates() {
	
	
	return "dates";
}



	
}
