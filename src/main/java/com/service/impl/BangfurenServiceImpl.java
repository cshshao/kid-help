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


import com.dao.BangfurenDao;
import com.entity.BangfurenEntity;
import com.service.BangfurenService;
import com.entity.vo.BangfurenVO;
import com.entity.view.BangfurenView;

@Service("bangfurenService")
public class BangfurenServiceImpl extends ServiceImpl<BangfurenDao, BangfurenEntity> implements BangfurenService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<BangfurenEntity> page = this.selectPage(
                new Query<BangfurenEntity>(params).getPage(),
                new EntityWrapper<BangfurenEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<BangfurenEntity> wrapper) {
		  Page<BangfurenView> page =new Query<BangfurenView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<BangfurenVO> selectListVO(Wrapper<BangfurenEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public BangfurenVO selectVO(Wrapper<BangfurenEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<BangfurenView> selectListView(Wrapper<BangfurenEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public BangfurenView selectView(Wrapper<BangfurenEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
