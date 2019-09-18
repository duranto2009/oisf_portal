package com.revesoft.springboot.web.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateFormatter {
    public String dateFormat(String dateString){
        SimpleDateFormat dt = new SimpleDateFormat("yyyy-MM-dd");

        Date date=null;
        try {
             date = dt.parse(dateString);
        } catch (ParseException e) {
            e.printStackTrace();
        }

        // *** same for the format String below
        SimpleDateFormat dt1 = new SimpleDateFormat("EEE, d MMM yyyy");
        return dt1.format(date);
    }
}
