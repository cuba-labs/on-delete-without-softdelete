package com.company.sample.listener;

import com.company.sample.entity.Fruit;
import com.company.sample.entity.FruitSet;
import com.haulmont.cuba.core.EntityManager;
import com.haulmont.cuba.core.global.DeletePolicyException;
import com.haulmont.cuba.core.global.Metadata;
import com.haulmont.cuba.core.listener.BeforeDeleteEntityListener;
import org.springframework.stereotype.Component;

import javax.inject.Inject;

@Component("sample_FruitEntityListener")
public class FruitEntityListener implements BeforeDeleteEntityListener<Fruit> {

    @Inject
    protected Metadata metadata;

    @Override
    public void onBeforeDelete(Fruit entity, EntityManager entityManager) {
        FruitSet fruitSet = entityManager
                .createQuery("select e from sample$FruitSet e join e.fruits f where f.id = :fruit", FruitSet.class)
                .setParameter("fruit", entity.getId())
                .getFirstResult();
        if (fruitSet != null) {
            throw new DeletePolicyException(metadata.getClassNN(entity.getClass()).getName(),
                    metadata.getClassNN(entity.getFruitSet().getClass()).getName());
        }
    }
}