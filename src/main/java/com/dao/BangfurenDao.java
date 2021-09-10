package com.dao;

import com.entity.BangfurenEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.BangfurenVO;
import com.entity.view.BangfurenView;


/**
 * 帮扶人
 * 
 * @author 
 * @email 
 * @date 2021-03-01 19:53:04
 */
public interface BangfurenDao extends BaseMapper<BangfurenEntity> {
	
	List<BangfurenVO> selectListVO(@Param("ew") Wrapper<BangfurenEntity> wrapper);
	
	BangfurenVO selectVO(@Param("ew") Wrapper<BangfurenEntity> wrapper);
	
	List<BangfurenView> selectListView(@Param("ew") Wrapper<BangfurenEntity> wrapper);

	List<BangfurenView> selectListView(Pagination page,@Param("ew") Wrapper<BangfurenEntity> wrapper);
	
	BangfurenView selectView(@Param("ew") Wrapper<BangfurenEntity> wrapper);
	
}
