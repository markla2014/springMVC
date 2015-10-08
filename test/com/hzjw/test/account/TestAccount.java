package com.hzjw.test.account;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.hzjw.common.Pager;
import com.hzjw.entity.Account;
import com.hzjw.service.AccountService;


public class TestAccount {
 private static AccountService as;
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		as=(AccountService)context.getBean("accountServiceImpl");
	}

	@Test
	public void testAdd() {
		Account account=new Account();
		account.setName("mark");
		account.setPwd("234");
		as.save(account);
	}
	@Test
	public void testDelete() {
		as.delete(6);
	}
	@Test
	public void testFindById(){
		System.out.println(as.findById(7).getName());
	}
	@Test
	public void testFindAll(){
		List<Account> list=as.findAll();
		for(Account a:list){
			System.out.println(a.getName());
		}
	}
	@Test
	public void testFindByPage(){
		Pager<Account> pager=as.findByPage(0, 2);
		System.out.println(pager.getTotalNum());
		for(Account account:pager.getPageList()){
			System.out.println(account.getName());
		}
	}
}
