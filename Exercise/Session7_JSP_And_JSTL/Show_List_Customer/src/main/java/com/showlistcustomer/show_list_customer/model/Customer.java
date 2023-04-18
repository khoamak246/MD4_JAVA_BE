package com.showlistcustomer.show_list_customer.model;

public class Customer {
    private String name;
    private String dateOfBirt;
    private String address;
    private String avatar;

    public Customer(String name, String dateOfBirt, String address, String avatar) {
        this.name = name;
        this.dateOfBirt = dateOfBirt;
        this.address = address;
        this.avatar = avatar;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDateOfBirt() {
        return dateOfBirt;
    }

    public void setDateOfBirt(String dateOfBirt) {
        this.dateOfBirt = dateOfBirt;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }
}
