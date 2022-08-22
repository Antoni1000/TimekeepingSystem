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
public class TypeForLeave {
    private int id;
    private String name;
    private String symbols;
    private float salary;
    private Date from;
    private Date to;
    private ArrayList<Employee> emps = new ArrayList<>();
    
    public float getDays()
    {
        return DateTimeHelper.diffHours(to,from)/24;
    }


    public ArrayList<Employee> getEmps() {
        return emps;
    }

    public void setEmps(ArrayList<Employee> emps) {
        this.emps = emps;
    }

    public TypeForLeave(int id, String name, String symbols, float salary) {
        this.id = id;
        this.name = name;
        this.symbols = symbols;
        this.salary = salary;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSymbols() {
        return symbols;
    }

    public void setSymbols(String symbols) {
        this.symbols = symbols;
    }

    public float getSalary() {
        return salary;
    }

    public void setSalary(float salary) {
        this.salary = salary;
    }
    
    
}
