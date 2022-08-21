/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author hp
 */
public class Role {
    private int id;
    private String name;
    private float basic_salary;
    private float glone;

    public Role(int id, String name, float basic_salary, float glone) {
        this.id = id;
        this.name = name;
        this.basic_salary = basic_salary;
        this.glone = glone;
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
