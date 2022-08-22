/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import helper.DateTimeHelper;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Employee;

/**
 *
 * @author hp
 */
public class EmployeeDBContext extends DBContext{
    
    public ArrayList<Employee> getEmps(Date from,Date to){
        
        ArrayList<Employee> emps = new ArrayList<>();
        try {
            String sql = "select e.eid, e.ename,r.rname,w.wid,t.tid,w.[from],w.[to],t.checkin,t.checkout "
                    + "from Employee e,WorkDate w,Timesheet t,WorkingTime wt , Role r \n"
                    + "where e.eid = wt.eid and w.wid = wt.wid and t.tid = wt.tid and r.rid = e.rid Order by e.eid";
            PreparedStatement stm  = connection.prepareStatement(sql);
            stm.setTimestamp(1,DateTimeHelper.getTimeStamp(from));
            stm.setTimestamp(2,DateTimeHelper.getTimeStamp(to));
            ResultSet rs = stm.executeQuery();
            Employee currentEmp = new Employee();
            currentEmp.setId(-1);
            while(rs.next())
            {
                int eid = rs.getInt("eid");
                if(eid != currentEmp.getId())
                {
                    currentEmp = new Employee();
                    currentEmp.setId(eid);
                    currentEmp.setName(rs.getString("ename"));
                    emps.add(currentEmp);
                    }
                }
                
            
        } catch (SQLException ex) {
            Logger.getLogger(EmployeeDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return emps;
    }
}
