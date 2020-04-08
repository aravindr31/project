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

import com.med.entity.Sales;
import com.med.service.SalesService;

@Controller
@RequestMapping("/sales")
public class SalesController {
	
	@Autowired
	SalesService salesService;
    
	@GetMapping("/list")
    public String listSales(Model theModel)
    {
		List<Sales> sales= salesService.getAllSales();
		theModel.addAttribute("sales",sales);
		sales.forEach(s -> System.out.println(s));
    	return "sales-list";
    }
	
    @GetMapping("/addSales")
	public String addSales(Model model) {
    	Sales s1= new Sales();
		model.addAttribute("sales",s1);
		return "sales-add-form";
	}
    
    @PostMapping("/saveSales")
	public String saveSales(@Valid @ModelAttribute("sales") Sales sale,@RequestParam("medicineId") int id,BindingResult bind)
	{
    	if(bind.hasErrors())
    	{
    		System.out.println(bind);
    		return "sales-add-form";
    	}
    	else
    	{
    		salesService.saveSales(sale);
    		salesService.updateStock(id);
		   return "redirect:/sales/list";
    	}
	}
}