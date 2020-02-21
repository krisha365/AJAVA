/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
//CLASS FOR CREATING PRODUCTS
package com.vvp.web;
/**
 *
 * @author KRISHNA
 */
public class Product {
    int pId;
    String pName;
    String pDescription;
    double pPrice;
    int pStock;

    public Product(int pId, String pName, String pDescription, int pPrice, int pStock) {
        this.pId = pId;
        this.pName = pName;
        this.pDescription = pDescription;
        this.pPrice = pPrice;
        this.pStock = pStock;
    }

    public int getStock() {
        return pStock;
    }

    public double getProductPrice() {
        return pPrice;
    }

    public void setStock(int pStock) {
        this.pStock = pStock;
    }

    public int getProductId() {
        return pId;
    }

    public String getProductName() {
        return pName;
    }

    public String getProductDescription() {
        return pDescription;
    }
}
