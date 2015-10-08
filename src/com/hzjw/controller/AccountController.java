package com.hzjw.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hzjw.entity.Account;
import com.hzjw.service.AccountService;

@Controller
@RequestMapping("/account")
public class AccountController{
	@Resource(name="accountServiceImpl")
private AccountService as;
@RequestMapping("/add")
public String addAccount(HttpServletRequest req ){
	Account acc=new Account();
	acc.setName(req.getParameter("name"));
	acc.setPwd(req.getParameter("pwd"));
	as.save(acc);
	req.setAttribute("key", "success");
	return "hzjw";
}
}
