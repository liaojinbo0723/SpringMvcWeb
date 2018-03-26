package com.neo.datamanager.dao;


import com.neo.datamanager.util.Page;

import java.util.List;


public interface RuleDao {


    public List<RuleEntity> selectAll(Page page);
    /**
     * 插入规则记录
     *
     * @param userEntity
     * @return
     */
    public Integer insert(RuleEntity userEntity);

    /**
     * 删除规则记录
     *
     * @param id
     * @return
     */
    public void delete(Integer id);

    /**
     * 更新规则记录
     *
     * @param
     * @return
     */
    public void update(RuleEntity userEntity);

    /**
     * 根据用户id查找规则
     *
     * @param id
     * @return
     */
    public RuleEntity selectById(Integer id);
    public int total();
}

