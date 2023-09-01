package com.inssa.goods.VO;

import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
public class GoodsVO {
    private  int gno;
    private  String ggoods;
    private String gcontent;
    private int gprice;
    private  int gquan;
    private  String gimg;
}
