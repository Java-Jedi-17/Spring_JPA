package ru.netology.repository;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class PersonRepository {
    @PersistenceContext
    private EntityManager entityManager;

    public List getPersonsByCity(@Param("city") String city) {
        return entityManager.createQuery(
                        "SELECT p FROM Person p WHERE lower(p.cityOfLiving) = lower(:city)")
                .setParameter("city", city)
                .getResultList();
    }
}
