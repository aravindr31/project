package com.med.controller;


import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.med.entity.Medicine;
import com.med.service.MedService;

@Controller
@RequestMapping("/medicine")
public class MedController {
	
	@Autowired
	MedService medicineService;
    
	@GetMapping("/list")
    public String listMedicine(Model theModel)
    {
		List<Medicine> medicines= medicineService.getAllMedicines();
		theModel.addAttribute("medicines",medicines);
		medicines.forEach(s -> System.out.println(s));
    	return "medicine-list";
    }
	
    @GetMapping("/addMedicine")
	public String addMedicine(Model model) {
    	Medicine m1=new Medicine();
		model.addAttribute("medicine",m1);
		return "medicine-add-form";
	}
    
    @PostMapping("/saveMedicine")
	public String saveMedicine(@Valid @ModelAttribute("medicine") Medicine med,BindingResult bind)
	{
    	if(bind.hasErrors())
    	{
    		System.out.println(bind);
    		return "medicine-add-form";
    	}
    	else
    	{
    		medicineService.saveMedicine(med);
		   return "redirect:/medicine/list";
    	}
	}
    
    @GetMapping("/updateMedicine")
    public String updateMedicine(@RequestParam("medicineId") int id,Model model)
	{
    	
    	Medicine med=medicineService.getMedicine(id);
		model.addAttribute("medicine", med);
		return "medicine-update-form";
    	
	}
    
    @GetMapping("/deleteMedicine")
	public String delete(@RequestParam("medicineId") int id)
	{
    	medicineService.deleteMedicine(id);
		return "redirect:/medicine/list";
	}
    @GetMapping("/searchMedicine")
  	public String searchMedicine(@RequestParam("medicineId") int id, Model model)
  	{
    	Medicine med=medicineService.searchMedicine(id);
      	model.addAttribute("medicine", med);
  		return "medicine-search-form";
  	}
}
