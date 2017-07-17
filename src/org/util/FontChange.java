package org.util;

import java.io.UnsupportedEncodingException;

public class FontChange {
			
	public static String changeChina(String str,String charSet) throws UnsupportedEncodingException{
		 byte[] b = str.getBytes("ISO-8859-1");	
		 String s = new String(b,charSet);
		 return s;
				
	}
}
