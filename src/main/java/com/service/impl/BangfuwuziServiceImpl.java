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


import com.dao.BangfuwuziDao;
import com.entity.BangfuwuziEntity;
import com.service.BangfuwuziService;
import com.entity.vo.BangfuwuziVO;
import com.entity.view.BangfuwuziView;

@Service("bangfuwuziService")
public class BangfuwuziServiceImpl extends ServiceImpl<BangfuwuziDao, BangfuwuziEntity> implements BangfuwuziService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<BangfuwuziEntity> page = this.selectPage(
                new Query<BangfuwuziEntity>(params).getPage(),
                new EntityWrapper<BangfuwuziEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<BangfuwuziEntity> wrapper) {
		  Page<BangfuwuziView> page =new Query<BangfuwuziView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<BangfuwuziVO> selectListVO(Wrapper<BangfuwuziEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public BangfuwuziVO selectVO(Wrapper<BangfuwuziEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<BangfuwuziView> selectListView(Wrapper<BangfuwuziEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public BangfuwuziView selectView(Wrapper<BangfuwuziEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
