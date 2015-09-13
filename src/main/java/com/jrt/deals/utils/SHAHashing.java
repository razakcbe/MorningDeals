package com.jrt.deals.utils;

import java.security.MessageDigest;

public class SHAHashing {
	
	 public static String getHashedPassword(String passwordToHash) throws Exception
	    {	    	
	        MessageDigest md = MessageDigest.getInstance("SHA-256");
	        md.update(passwordToHash.getBytes());
	        
	        byte byteData[] = md.digest();
	 	        
	        //convert the byte to hex format method 2
	        StringBuffer hexString = new StringBuffer();
	    	for (int i=0;i<byteData.length;i++) {
	    		String hex=Integer.toHexString(0xff & byteData[i]);
	   	     	if(hex.length()==1) hexString.append('0');
	   	     	hexString.append(hex);
	    	}
	    	//System.out.println("Hex format : " + hexString.toString());
	    	return hexString.toString();
	    }
}
