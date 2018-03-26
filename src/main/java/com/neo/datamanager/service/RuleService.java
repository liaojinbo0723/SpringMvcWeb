package com.neo.datamanager.service;

import com.neo.datamanager.dao.RuleEntity;
import com.neo.datamanager.util.Page;

import java.util.List;

public interface RuleService {
    public List<RuleEntity> selectAll(Page page);

    public Integer InsertRule(RuleEntity ruleEntity);

    public void updateRule(RuleEntity ruleEntity);

    public void deleteRule(Integer id);

    public RuleEntity getRuleById(Integer id);

    public int total();
}
