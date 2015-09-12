/**
 * 
 */
package com.jrt.deals.utils;

/**
 * @author Prakasa Totta
 *
 */
public class StringUtils {

	
	public boolean isNullOrEmpty(String val){
		return val==null || "".equals(val.trim()) ? true:false;
	}
}
