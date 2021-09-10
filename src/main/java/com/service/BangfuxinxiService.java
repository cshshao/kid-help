package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.BangfuxinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.BangfuxinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.BangfuxinxiView;


/**
 * 帮扶信息
 *
 * @author 
 * @email 
 * @date 2021-03-01 19:53:04
 */
public interface BangfuxinxiService extends IService<BangfuxinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<BangfuxinxiVO> selectListVO(Wrapper<BangfuxinxiEntity> wrapper);
   	
   	BangfuxinxiVO selectVO(@Param("ew") Wrapper<BangfuxinxiEntity> wrapper);
   	
   	List<BangfuxinxiView> selectListView(Wrapper<BangfuxinxiEntity> wrapper);
   	
   	BangfuxinxiView selectView(@Param("ew") Wrapper<BangfuxinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<BangfuxinxiEntity> wrapper);
   	
}

