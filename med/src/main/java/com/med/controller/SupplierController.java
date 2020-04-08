
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

import com.med.entity.Supplier;
import com.med.service.SupplierService;

@Controller
@RequestMapping("/supplier")
public class SupplierController {
	
	@Autowired
	SupplierService supplierService;
    
	@GetMapping("/list")
    public String listSupplier(Model theModel)
    {
		List<Supplier> supplier= supplierService.getAllSupplier();
		theModel.addAttribute("supplier",supplier);
		supplier.forEach(s -> System.out.println(s));
    	return "supplier-list";
    }
	
    @GetMapping("/addSupplier")
	public String addSupplier(Model model) {
    	Supplier s1= new Supplier();
		model.addAttribute("supplier",s1);
		return "supplier-add-form";
	}
    
    @PostMapping("/saveSupplier")
	public String saveSupplier(@Valid @ModelAttribute("supplier") Supplier supplier,BindingResult bind)
	{
    	if(bind.hasErrors())
    	{
    		System.out.println(bind);
    		return "supplier-add-form";
    	}
    	else
    	{
    		supplierService.saveSupplier(supplier);
    	
		   return "redirect:/supplier/list";
    	}
	}
}