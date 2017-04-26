package mvcbmicalculator;

import java.util.Formatter;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class AppController {
	
	
	@RequestMapping(value = "/count", method = RequestMethod.POST)
	public String countBMI 
	(ModelMap model, @RequestParam("height") String height,
			@RequestParam("weight") String weight)
	{
		float w = Float.parseFloat(weight);
		float h = Float.parseFloat(height);
		
		float bmi = w / ( (h/100) * (h/100) );
		
		Formatter bmiFormatter = new Formatter ();
		bmiFormatter.format("%.3f", bmi);
		model.addAttribute("bmi", bmiFormatter);
		return "result";
		
	}
}
