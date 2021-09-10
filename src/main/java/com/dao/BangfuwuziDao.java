package com.dao;

import com.entity.BangfuwuziEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.BangfuwuziVO;
import com.entity.view.BangfuwuziView;


/**
 * 帮扶物资
 * 
 * @author 
 * @email 
 * @date 2021-03-01 19:53:04
 */
public interface BangfuwuziDao extends BaseMapper<BangfuwuziEntity> {
	
	List<BangfuwuziVO> selectListVO(@Param("ew") Wrapper<BangfuwuziEntity> wrapper);
	
	BangfuwuziVO selectVO(@Param("ew") Wrapper<BangfuwuziEntity> wrapper);
	
	List<BangfuwuziView> selectListView(@Param("ew") Wrapper<BangfuwuziEntity> wrapper);

	List<BangfuwuziView> selectListView(Pagination page,@Param("ew") Wrapper<BangfuwuziEntity> wrapper);
	
	BangfuwuziView selectView(@Param("ew") Wrapper<BangfuwuziEntity> wrapper);
	
}
