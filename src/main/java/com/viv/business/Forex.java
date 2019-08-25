package com.viv.business;

public class Forex {
	public static double[] usForexValues = {1.00,0.81,0.89,71.51};
	public static String[] titles = {"USD","GBP","EURO","INR"};
	
	
	private static double getValue(String currency) {
		int i;
		for(i=0;i<titles.length;i++) {
			if(currency.equals(titles[i]))
				return usForexValues[i];
		}
		
		return 1.00;
	}
	
	private static String format(double value) {
		String return_value = String.valueOf(value);
		int decimalPos = return_value.indexOf(".");
		try {
			if(decimalPos==-1)
				return return_value;
			else
				return return_value.substring(0,decimalPos+4);
		}
		catch(IndexOutOfBoundsException e) {
			return return_value;
		}
	}
	
	public static String convert(String currency_from, String currency_to, double value) {
		
		double value_currency_from = getValue(currency_from);
		double value_currency_to = getValue(currency_to);
		double return_value = (value/value_currency_from)*value_currency_to;
		return format(return_value);
	}
	
}
