package com.inssa.goods.Service;


import com.inssa.goods.VO.GoodsVO;

import java.util.List;

public interface GoodsService {

    public  List<GoodsVO> selectAllGoods() throws Exception;

    public void insertGoods(GoodsVO goodsVO) throws  Exception;

    public GoodsVO selectUpdate(int gno) throws  Exception;

    public void updateGoods(GoodsVO goodsVO) throws  Exception;

    public void deleteGoods(int gno) throws  Exception;
}
