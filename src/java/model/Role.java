/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author hp
 */
public class Role {
    private int id;
    private String name;
    private float basic_salary;
    private float glone;
    private float pay_rate;

    public float getPay_rate() {
        return pay_rate;
    }

    public void setPay_rate(float pay_rate) {
        this.pay_rate = pay_rate;
    }

    public ArrayList<Employee> getEmps() {
        return emps;
    }

    public void setEmps(ArrayList<Employee> emps) {
        this.emps = emps;
    }

    public Role(int id, String name, float basic_salary, float glone, float pay_rate) {
        this.id = id;
        this.name = name;
        this.basic_salary = basic_salary;
        this.glone = glone;
        this.pay_rate = pay_rate;
    }
    private ArrayList<Employee> emps = new ArrayList<>();
    

    

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

    public float getBasic_salary() {
        return basic_salary;
    }

    public void setBasic_salary(float basic_salary) {
        this.basic_salary = basic_salary;
    }

    public float getGlone() {
        return glone;
    }

    public void setGlone(float glone) {
        this.glone = glone;
    }
    
    
}
