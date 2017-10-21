package com.www2.util;

public class Test {
	public static void main(String[] args) {
		String info = "aaa$times";
	/*	System.out.println(info.lastIndexOf("$"));*/
		System.out.println(info.substring(0, info.lastIndexOf("$")));
		System.out.println(info.substring(info.lastIndexOf("$")+1));
	}
}
