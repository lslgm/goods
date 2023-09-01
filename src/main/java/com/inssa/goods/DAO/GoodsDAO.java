package com.inssa.goods.DAO;


import com.inssa.goods.VO.GoodsVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface GoodsDAO {

   // selectAllGoods
      //      insertGoods
   // selectUpdate
        //    updateGoods
   // deleteGoods
   public  List<GoodsVO> selectAllGoods() throws Exception;

   public void insertGoods(GoodsVO goodsVO) throws  Exception;

   public GoodsVO selectUpdate(int gno) throws  Exception;

   public void updateGoods(GoodsVO goodsVO) throws  Exception;

   public void deleteGoods(int gno) throws  Exception;
}
