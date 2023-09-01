package com.inssa.goods.Service;


import com.inssa.goods.DAO.GoodsDAO;
import com.inssa.goods.VO.GoodsVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GoodsServiceImpl implements GoodsService {
    @Autowired
    GoodsDAO goodsDao;
    @Override
    public List<GoodsVO> selectAllGoods() throws Exception {
        return goodsDao.selectAllGoods();
    }

    @Override
    public void insertGoods(GoodsVO goodsVO) throws Exception {
        goodsDao.insertGoods(goodsVO);
    }

    @Override
    public GoodsVO selectUpdate(int gno) throws Exception {
        return goodsDao.selectUpdate(gno);
    }

    @Override
    public void updateGoods(GoodsVO goodsVO) throws Exception {
        goodsDao.updateGoods(goodsVO);
    }

    @Override
    public void deleteGoods(int gno) throws Exception {
        goodsDao.deleteGoods(gno);
    }
}
