package com.dao;

import com.entity.BangfuxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.BangfuxinxiVO;
import com.entity.view.BangfuxinxiView;


/**
 * 帮扶信息
 * 
 * @author 
 * @email 
 * @date 2021-03-01 19:53:04
 */
public interface BangfuxinxiDao extends BaseMapper<BangfuxinxiEntity> {
	
	List<BangfuxinxiVO> selectListVO(@Param("ew") Wrapper<BangfuxinxiEntity> wrapper);
	
	BangfuxinxiVO selectVO(@Param("ew") Wrapper<BangfuxinxiEntity> wrapper);
	
	List<BangfuxinxiView> selectListView(@Param("ew") Wrapper<BangfuxinxiEntity> wrapper);

	List<BangfuxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<BangfuxinxiEntity> wrapper);
	
	BangfuxinxiView selectView(@Param("ew") Wrapper<BangfuxinxiEntity> wrapper);
	
}
