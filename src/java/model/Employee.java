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
public class Employee {
    private int id;
    private String name;
    private Role role;
    private float insurance;
    private float fringe_benefits;
    private float bonus;
    private ArrayList<WorkDate> wds = new ArrayList<>();
    private ArrayList<TimeSheet> ts = new ArrayList<>();
    private ArrayList<TypeForLeave> leaves = new ArrayList<>();
    
    public float getTotalLeaves()
    {
        float sum = 0;
        for (TypeForLeave leave : leaves) {
            sum += leave.getDays();
        }
        return sum;
    }
    
    public int getWorkingDays()
    {
        return wds.size();
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

  

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public float getInsurance() {
        return insurance;
    }

    public void setInsurance(float insurance) {
        this.insurance = insurance;
    }

    public float getFringe_benefits() {
        return fringe_benefits;
    }

    public void setFringe_benefits(float fringe_benefits) {
        this.fringe_benefits = fringe_benefits;
    }

    public float getBonus() {
        return bonus;
    }

    public void setBonus(float bonus) {
        this.bonus = bonus;
    }

    public ArrayList<WorkDate> getWds() {
        return wds;
    }

    public void setWds(ArrayList<WorkDate> wds) {
        this.wds = wds;
    }

    public ArrayList<TimeSheet> getTs() {
        return ts;
    }

    public void setTs(ArrayList<TimeSheet> ts) {
        this.ts = ts;
    }

    public ArrayList<TypeForLeave> getLeaves() {
        return leaves;
    }

    public void setLeaves(ArrayList<TypeForLeave> leaves) {
        this.leaves = leaves;
    }
    
    
}
