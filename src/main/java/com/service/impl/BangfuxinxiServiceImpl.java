package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.BangfuxinxiDao;
import com.entity.BangfuxinxiEntity;
import com.service.BangfuxinxiService;
import com.entity.vo.BangfuxinxiVO;
import com.entity.view.BangfuxinxiView;

@Service("bangfuxinxiService")
public class BangfuxinxiServiceImpl extends ServiceImpl<BangfuxinxiDao, BangfuxinxiEntity> implements BangfuxinxiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<BangfuxinxiEntity> page = this.selectPage(
                new Query<BangfuxinxiEntity>(params).getPage(),
                new EntityWrapper<BangfuxinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<BangfuxinxiEntity> wrapper) {
		  Page<BangfuxinxiView> page =new Query<BangfuxinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<BangfuxinxiVO> selectListVO(Wrapper<BangfuxinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public BangfuxinxiVO selectVO(Wrapper<BangfuxinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<BangfuxinxiView> selectListView(Wrapper<BangfuxinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public BangfuxinxiView selectView(Wrapper<BangfuxinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
