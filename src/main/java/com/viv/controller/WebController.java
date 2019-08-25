package com.viv.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.viv.business.Forex;
import com.viv.business.LogManager;
import com.viv.log.LoggerMain;

@Controller
public class WebController {
	
	@RequestMapping("/")
	public String homePage(Model model) {
		LoggerMain.logger.info("Homepage requested");
		model.addAttribute("CurrencyList",Forex.titles);
		return "home";
	}
	
	@RequestMapping("/conversiontable")
	public String conversionTable(Model model) {
		LoggerMain.logger.info("Conversion table requested");
		model.addAttribute("CurrencyList",Forex.titles);
		model.addAttribute("ValueList",Forex.usForexValues);
		return "table";
	}
	
	@RequestMapping("/logtable")
	public String logTable(Model model) {
		List<String> logs = LogManager.getLogs();
		model.addAttribute("Logs",logs);
		return "logs";
	}
	
	@RequestMapping("/logtable/{filterType}")
	public String logTableFiltered(Model model, @PathVariable String filterType) {
		List<String> logs = LogManager.getFilteredLogs(filterType);
		model.addAttribute("Logs",logs);
		return "logs";
	}
	
	@PostMapping("/convert")
	public String convertPageSolution(Model model, @RequestParam(required=false) String currency_from,
			@RequestParam(required=false) String currency_to, @RequestParam(required=false, defaultValue = "") double input_value) {
	LoggerMain.logger.debug("Converting "+currency_from+" to "+currency_to );
	model.addAttribute("CurrencyList",Forex.titles);
	try {
		model.addAttribute("currency_from",currency_from);
		model.addAttribute("currency_to",currency_to);
		model.addAttribute("input_value",input_value);
		model.addAttribute("output_value",Forex.convert(currency_from, currency_to, input_value));
	}
	catch(Exception e) {
		model.addAttribute("input_value","");
		LoggerMain.logger.error(e);
	}
	
	return "home";
		
	}
	
	
	
}
