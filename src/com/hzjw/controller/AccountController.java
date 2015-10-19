package com.hzjw.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hzjw.common.Pager;
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
@RequestMapping("/findBypage")
public String findByPage(HttpServletRequest req){
	int pageSize=3;
	int pageNo=0;
	String sPageNo=req.getParameter("pager.offset");
	if(sPageNo!=null){
		pageNo=Integer.parseInt(sPageNo);
	}
	Pager<Account> pager=as.findByPage(pageNo, pageSize);
	req.setAttribute("pager",pager);
	return "findByPage";
}
}
