/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Holiday;

/**
 *
 * @author hp
 */
public class HolidayDBContext extends DBContext{
    public ArrayList<Holiday> getHolidays (){
        ArrayList<Holiday> holidays = new ArrayList<>();
        try {
            
            
            String sql = " select * from Holiday";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while(rs.next()){
                Holiday h = new Holiday();
                h.setId(rs.getInt("hid"));
                h.setName(rs.getString("hname"));
                h.setFrom(rs.getDate("from"));
                h.setTo(rs.getDate("to"));
                h.setSalaryOT(rs.getFloat("salaryOT"));
                holidays.add(h);
            }
        } catch (SQLException ex) {
            Logger.getLogger(HolidayDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return holidays;
    }
}
