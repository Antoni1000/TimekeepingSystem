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
public class WorkDate {
    private int id;
    private Date from;
    private Date to;
    private ArrayList<TimeSheet> timesheets = new ArrayList<>();

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getFrom() {
        return from;
    }

    public void setFrom(Date from) {
        this.from = from;
    }

    public Date getTo() {
        return to;
    }

    public void setTo(Date to) {
        this.to = to;
    }

    public ArrayList<TimeSheet> getTimesheets() {
        return timesheets;
    }

    public void setTimesheets(ArrayList<TimeSheet> timesheets) {
        this.timesheets = timesheets;
    }

    public WorkDate(int id, Date from, Date to) {
        this.id = id;
        this.from = from;
        this.to = to;
    }

    public Date getCidate() {
        return DateTimeHelper.removeTime(from);
    }
    
    
    
} 
