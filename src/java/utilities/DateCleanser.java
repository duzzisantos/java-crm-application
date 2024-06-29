/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package utilities;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.sql.Date;

/**
 *
 * @author Duzie Uche-Abba
 * Description: Because getting request parameters for HTML date data is produced as strings, this class would help to
 * return them in actual date formats to fit with the SQL table schema
 */
public class DateCleanser {
    public String dateString;
    
    public DateCleanser(String dateStr){
        dateString = dateStr;
    }
    
    
    public Date getCleansedDate(){
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        
        try {
            java.util.Date parsedDate = dateFormat.parse(dateString);
            java.sql.Date sqlDate = new java.sql.Date(parsedDate.getTime());
                    
            return sqlDate;
        } catch(ParseException e){
            e.printStackTrace();
            return null;
        }
        
    }
    
}
