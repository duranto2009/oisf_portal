/**
 * 
 */
package com.revesoft.springboot.web.util;

import java.text.DecimalFormat;

/**
 * @author sh@r!f
 *
 */
public class FileSizeFormatter {
	public static String readableFileSize(long size) {
	    if(size <= 0) return "0";
	    final String[] units = new String[] { "বাইট(B)", "কিলোবাইট(kB)", "মেগাবাইট(MB)", "গিগাবাইট(GB)", "টেরাবাইট(TB)" };
	    int digitGroups = (int) (Math.log10(size)/Math.log10(1024));
	    return new DecimalFormat("#,##0.#").format(size/Math.pow(1024, digitGroups)) + " " + units[digitGroups];
	}
}
