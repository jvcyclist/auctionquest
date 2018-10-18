package pl.karas.auctionquest.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pl.karas.aucionquest.datecalc.Datec;

@Controller
@RequestMapping("/aq")
public class AQController {

@RequestMapping("/date")
public String showDate(Model theModel) {
	theModel.addAttribute("datec", new Datec());
	return "date";
}

@RequestMapping("/calcDate")
public String calcDate(@ModelAttribute Datec datec) {
	datec.setResult();
	
	return "date";
}




	
}
