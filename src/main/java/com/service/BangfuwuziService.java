package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.BangfuwuziEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.BangfuwuziVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.BangfuwuziView;


/**
 * 帮扶物资
 *
 * @author 
 * @email 
 * @date 2021-03-01 19:53:04
 */
public interface BangfuwuziService extends IService<BangfuwuziEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<BangfuwuziVO> selectListVO(Wrapper<BangfuwuziEntity> wrapper);
   	
   	BangfuwuziVO selectVO(@Param("ew") Wrapper<BangfuwuziEntity> wrapper);
   	
   	List<BangfuwuziView> selectListView(Wrapper<BangfuwuziEntity> wrapper);
   	
   	BangfuwuziView selectView(@Param("ew") Wrapper<BangfuwuziEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<BangfuwuziEntity> wrapper);
   	
}

