package persistence;

import pojo.*;

import java.util.ArrayList;
import java.util.List;

public class test {
    public static void main(String[] args) {
        String price = "$18.50";
        String priceStr = price.substring(1,price.length());
        Float priceInt = Float.parseFloat(priceStr);
        System.out.println(priceInt);
    }
}
