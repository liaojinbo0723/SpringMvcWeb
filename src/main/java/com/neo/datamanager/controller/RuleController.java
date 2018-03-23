package com.neo.datamanager.controller;

import com.neo.datamanager.dao.RuleEntity;
import com.neo.datamanager.service.RuleService;
import com.neo.datamanager.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;

@Controller
public class RuleController {
    @Autowired
    RuleService ruleService;

    @RequestMapping("/getRule")
    public ModelAndView getRule(Page page) {
		List<RuleEntity> list=ruleService.selectAll(page);
		int total = ruleService.total();
		page.caculateLast(total);
//		map.put("lists", list);
		ModelAndView mav = new ModelAndView();
		mav.addObject("lists",list);
		mav.setViewName("list");
		System.out.println(list);
		return mav;
	}

	/**
	 * 添加
	 * @return
	 */
	@RequestMapping("/addRule")
	public String add(RuleEntity ruleEntity) {
	    System.out.println("添加");
		System.out.println(ruleEntity.getId());
		ruleService.InsertRule(ruleEntity);
        return "redirect:/index.jsp";
	}

	/**
	 * 删除
	 * @return
	 */
	@RequestMapping("/deleteRule/{id}")
	public String  delete(@PathVariable("id") Integer id) {
		System.out.println(id);
		ruleService.deleteRule(id);
		return "redirect:/index.jsp";
	}

	/**
	 * 修改
	 * @return
	 */
	@RequestMapping("/updateRule")
	public void update(int id) {

		ruleService.updateRule(id);
	}
}
