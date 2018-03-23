package com.neo.datamanager.dao;


import com.neo.datamanager.util.Page;

import java.util.List;


public interface RuleDao {


    List<RuleEntity> selectAll(Page page);
    /**
     * 插入规则记录
     *
     * @param userEntity
     * @return
     */
    Integer insert(RuleEntity userEntity);

    /**
     * 删除规则记录
     *
     * @param id
     * @return
     */
    void delete(Integer id);

    /**
     * 更新规则记录
     *
     * @param
     * @return
     */
    void update(Integer id);

    /**
     * 根据用户id查找规则
     *
     * @param id
     * @return
     */
    RuleEntity selectById(Integer id);
    public int total();
}

