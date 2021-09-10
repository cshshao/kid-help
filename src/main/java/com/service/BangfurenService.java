package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.BangfurenEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.BangfurenVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.BangfurenView;


/**
 * 帮扶人
 *
 * @author 
 * @email 
 * @date 2021-03-01 19:53:04
 */
public interface BangfurenService extends IService<BangfurenEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<BangfurenVO> selectListVO(Wrapper<BangfurenEntity> wrapper);
   	
   	BangfurenVO selectVO(@Param("ew") Wrapper<BangfurenEntity> wrapper);
   	
   	List<BangfurenView> selectListView(Wrapper<BangfurenEntity> wrapper);
   	
   	BangfurenView selectView(@Param("ew") Wrapper<BangfurenEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<BangfurenEntity> wrapper);
   	
}

