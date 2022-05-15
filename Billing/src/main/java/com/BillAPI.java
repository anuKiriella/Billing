package com;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Billing;

@WebServlet("/BillAPI")
public class BillAPI extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    Billing billingObj = new Billing();
    
    public BillAPI() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
		
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String output = billingObj.insertbilldetails(
				request.getParameter("name"),
				request.getParameter("accountNumber"),
				request.getParameter("serviceAddress"),
				request.getParameter("dueDate"),
				request.getParameter("unitsUsed"),
				request.getParameter("amount"));
				
				response.getWriter().write(output); 
				//doGet(request, response);		
	}
	
	
	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		Map paras = getParasMap(request); 
		System.out.println(paras);
		 String output = billingObj.updatebilldetails(
			 paras.get("billID").toString(), 
			 paras.get("name").toString(), 
			 paras.get("accountNumber").toString(), 
			 paras.get("serviceAddress").toString(),
			 paras.get("dueDate").toString(), 
			 paras.get("unitsUsed").toString(), 
			 paras.get("amount").toString());
		 
		 
		 response.getWriter().write(output); 
	}
	
	
	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 Map paras = getParasMap(request); 
		 String output = billingObj.deletebilldetails(paras.get("id").toString()); 
		 response.getWriter().write(output); 
	}
	
	private static Map getParasMap(HttpServletRequest request) 
	{ 
		 Map<String, String> map = new HashMap<String, String>(); 
		try
		 { 
			 Scanner scanner = new Scanner(request.getInputStream(), "UTF-8"); 
			 String queryString = scanner.hasNext() ? 
			 scanner.useDelimiter("\\A").next() : ""; 
			 scanner.close(); 
			 String[] params = queryString.split("&"); 
			 for (String param : params) 
		 { 
			 
			 String[] p = param.split("="); 
			 map.put(p[0], p[1]); 
		 } 
			 
		 } 
			catch (Exception e) 
		 { 
		 } 
		return map; 
		}

}
