package pl.karas.auctionquest.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import pl.karas.auctionquest.datecalc.Datec;

@Controller
@RequestMapping("/")
@ResponseBody
public class AQController {


@RequestMapping("/calcDate")
@ResponseBody
public String calcDate(@ModelAttribute Datec datec) {
	datec.setResult();
	
	return "date";
}

@RequestMapping("/calcDates")
@ResponseBody
public String calcDates() {
	
	
	return "dates";
}



	
}
