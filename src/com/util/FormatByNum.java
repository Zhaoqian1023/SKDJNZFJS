package com.util;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.NumberFormat;

public class FormatByNum {
	public static String format(double value){
		NumberFormat nf = NumberFormat.getNumberInstance();
		 nf.setMaximumFractionDigits(2);
		 /*
		  * setMinimumFractionDigits设置成2
		  * 
		  * 如果不这么做，那么当value的值是100.00的时候返回100
		  * 
		  * 而不是100.00
		  */
		 nf.setMinimumFractionDigits(2);
		 nf.setRoundingMode(RoundingMode.HALF_UP);
		 /*
		  * 如果想输出的格式用逗号隔开，可以设置成true
		  */
		 nf.setGroupingUsed(false);
		 return nf.format(value);
	}
	public static void main(String[] args) {
		float finalgrade = 0.5f;
		System.out.println(format(0.546));
		int a = 3;
		int b = 2;
		double d = Double.parseDouble("3")/Double.parseDouble("2");
		System.out.println((new BigDecimal(d).setScale(2, BigDecimal.ROUND_HALF_UP)).toString());
		
	}

}
