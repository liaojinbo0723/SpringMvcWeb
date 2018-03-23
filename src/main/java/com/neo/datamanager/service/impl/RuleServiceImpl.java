package com.neo.datamanager.service.impl;

import com.neo.datamanager.dao.RuleDao;
import com.neo.datamanager.dao.RuleEntity;
import com.neo.datamanager.service.RuleService;
import com.neo.datamanager.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RuleServiceImpl implements RuleService {
    @Autowired
    RuleDao ruleDao;

    public List<RuleEntity> selectAll(Page page) {
        return ruleDao.selectAll(page);
    }

    public Integer InsertRule(RuleEntity ruleEntity) {
        return ruleDao.insert(ruleEntity);
    }

    public void updateRule(Integer id) {
        ruleDao.update(id);
    }

    public void deleteRule(Integer id) {
        ruleDao.delete(id);
    }

    public RuleEntity getRuleById(Integer id) {
        return ruleDao.selectById(id);
    }
    public int total() {
        return ruleDao.total();
    };
}
