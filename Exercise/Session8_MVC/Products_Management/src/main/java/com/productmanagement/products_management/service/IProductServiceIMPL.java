package com.productmanagement.products_management.service;

import com.productmanagement.products_management.model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class IProductServiceIMPL implements IProductService{
    private static Map<Integer, Product> products;
    static {
        products = new HashMap<Integer, Product>();
        products.put(1, new Product(1, "Ao", 100, 100));
        products.put(2, new Product(2, "Quan", 200, 200));
        products.put(3, new Product(3, "Giay", 300, 400));
        products.put(4, new Product(4, "Dep", 500, 500));
    }
    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(), product);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public void update(int id, Product product) {
        products.put(product.getId(), product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }
}
