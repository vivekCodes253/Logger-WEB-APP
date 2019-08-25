package com.viv.log;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

@Aspect
//@Component
public class LoggingAspect {
	

	@Pointcut("execution(* *(..))")
	public void addFunction() {}
	
	@Before("addFunction()")
	public void addOp(){
		LoggerMain.logger.warn("Adding");
		System.out.println("Adding mate");
	}
	
	
	
/*	
	@Pointcut("execution(* com.viv.*.*.*(..))")
	public void allDAOCalls() {}
	
	@Pointcut("execution(* add*(..))")
	public void allAddCalls() {}
	
	@Pointcut("execution(public * get*(..))")
	public void getters() {}
	

	@Pointcut("execution(public * set*(..))")
	public void setters() {}
	
	
	//@Before("!(setters()||getters())")
	@Before("execution(* set*(..))")
	public void beforeAddAccountAdvice() {
		System.out.println("====> @Before being executed "+getClass());
	}
	
	@Before("setters()||getters()")
	public void handleGetterAndSetter()
	{
		System.out.println("GS here");
	}
	*/
	

}
