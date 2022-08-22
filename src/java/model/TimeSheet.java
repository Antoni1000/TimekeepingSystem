/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import helper.DateTimeHelper;
import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author hp
 */
public class TimeSheet {
    private int id;
    private Date checkin;
    private Date checkout;
    private ArrayList<WorkDate> workdates = new ArrayList<>();

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getCheckin() {
        return checkin;
    }

    public void setCheckin(Date checkin) {
        this.checkin = checkin;
    }

    public Date getCheckout() {
        return checkout;
    }

    public void setCheckout(Date checkout) {
        this.checkout = checkout;
    }

    public ArrayList<WorkDate> getWorkdates() {
        return workdates;
    }

    public void setWorkdates(ArrayList<WorkDate> workdates) {
        this.workdates = workdates;
    }

    public TimeSheet(int id, Date checkin, Date checkout) {
        this.id = id;
        this.checkin = checkin;
        this.checkout = checkout;
    }
    
    
    
    public float getWorkingHours()
    {
        return DateTimeHelper.diffHours(checkout, checkin);
    }
    
}
