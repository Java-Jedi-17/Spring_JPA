package ru.netology.service;

import ru.netology.repository.ProductRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductService {
    private final ProductRepository repository;

    public ProductService(ProductRepository repository) {
        this.repository = repository;
    }

    public List getProductName(String name) {
        return repository.getProductName(name);
    }
}
