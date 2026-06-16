/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package lab6.com;

/**
 *
 * @author Dini <s75909@ocean.umt.edu.my>
 */
public class Book {

    private String stuid;
    private String stuname;
    private String stuprogram;
    private String address;

    public String getStuid() {
        return stuid;
    }

    // simple validation (capital letter + numbers)
    public void setStuid(String stuid) {
        if (stuid.matches("[A-Z][0-9]+")) {
            this.stuid = stuid;
        } else {
            this.stuid = null;
        }
    }

    public String getStuname() {
        return stuname;
    }

    public void setStuname(String stuname) {
        this.stuname = stuname;
    }

    public String getStuprogram() {
        return stuprogram;
    }

    public void setStuprogram(String stuprogram) {
        this.stuprogram = stuprogram;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}