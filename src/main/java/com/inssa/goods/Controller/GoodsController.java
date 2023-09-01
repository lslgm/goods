package com.inssa.goods.Controller;

import com.inssa.goods.Service.GoodsService;
import com.inssa.goods.VO.GoodsVO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.List;

@Controller
public class GoodsController {
    private Logger log = LoggerFactory.getLogger("GoodsController");

    @Autowired
    GoodsService goodsService;

    //html, jsp에서 <a href="">, <form action=""> => mapping
    //@RequestMapping(method = RequestMethod.GET, value = "/")
    @GetMapping("/")
    public ModelAndView index(HttpServletRequest request, HttpServletResponse response) throws Exception {
        //log.info("index페이지작업");// 안내문출력
        //log.warn("경고문구"); //경고문 출력
       // log.error("오류문구"); //오류문구
        //ModelAndView() = > 브라우저에 출력할 jsp,html 파일
        ModelAndView mav = new ModelAndView("/index");

        return mav;
    }

    //상품목록
    @GetMapping("/goods-list")
    public ModelAndView goodsList(HttpServletRequest request, HttpServletResponse response) throws Exception {
        //log.info("goods-list 페이지작업");
        List<GoodsVO> lists = goodsService.selectAllGoods();
        //log.info("goods-list 데이터베이스작업");
        ModelAndView mav = new ModelAndView("/goods/list");
       // log.info("goods-list 페이지 이동");
        mav.addObject("list",lists);
        return mav;
    }


    //상품상세페이지
    @GetMapping("/goods-view")
    public ModelAndView goodsView(@RequestParam("gno") int gno, HttpServletResponse response) throws Exception {
        GoodsVO list = goodsService.selectUpdate(gno);
        ModelAndView mav = new ModelAndView("/goods/view");
        mav.addObject("list",list);
        return mav;
    }


    //삽입
    @GetMapping("/goods-insert")
    public ModelAndView getgoodsInsert(HttpServletRequest request, HttpServletResponse response) throws Exception {

        ModelAndView mav = new ModelAndView("/goods/insert");
        return mav;
    }

    @PostMapping("/goods-insert")
    public ModelAndView postgoodsInsert(@ModelAttribute("GoodsVO") GoodsVO goodsVO, @RequestParam("file") MultipartFile file,HttpServletRequest request, HttpServletResponse response) throws Exception {

        String fileName = file.getOriginalFilename();//파일의 위치 및 이름정보를 읽어 온다
        String filePath = request.getSession().getServletContext().getRealPath("/images/"); //서버에서 webapp의 위치+images폴더를 추가해서 저장
        try {
            file.transferTo(new File(filePath+fileName));
            goodsVO.setGimg(fileName);
            //System.out.println("이미지를 업로드 성공");
        } catch (IllegalStateException| IOException e){ //상태및 파일저장 오류
            e.printStackTrace();
        }
        goodsService.insertGoods(goodsVO);
        ModelAndView mav = new ModelAndView("redirect:/goods-list2");

        return mav;
    }

    //수정
    @GetMapping("/goods-update")
    public ModelAndView getgoodsUpdate(@RequestParam("gno") int gno, HttpServletResponse response) throws Exception {

        GoodsVO list = goodsService.selectUpdate(gno);
        ModelAndView mav = new ModelAndView("/goods/update");
        mav.addObject("list",list);
        return mav;
    }

    @PostMapping("/goods-update")
    public ModelAndView postgoodsUpdate(@ModelAttribute("GoodsVO") GoodsVO goodsVO, @RequestParam("file") MultipartFile file,HttpServletRequest request,HttpServletResponse response) throws Exception {

        String fileName = file.getOriginalFilename();//파일의 위치 및 이름정보를 읽어 온다
        String filePath = request.getSession().getServletContext().getRealPath("/images/"); //서버에서 webapp의 위치+images폴더를 추가해서 저장

        try {
            file.transferTo(new File(filePath+fileName));
            goodsVO.setGimg(fileName);
            //System.out.println("이미지를 업로드 성공");
        } catch (IllegalStateException| IOException e){ //상태및 파일저장 오류
            e.printStackTrace();
        }

        goodsService.updateGoods(goodsVO);
        ModelAndView mav = new ModelAndView("redirect:/goods-list2");
        return mav;
    }

    @GetMapping("/goods-delete")
    public ModelAndView goodsDelete(@RequestParam("gno") int gno, HttpServletResponse response) throws Exception {
        goodsService.deleteGoods(gno);
        ModelAndView mav = new ModelAndView("redirect:/goods-list2");
        return mav;
    }
    //관리자 상품 목록 페이지
    @GetMapping("/goods-list2")
    public ModelAndView goodsList2(HttpServletRequest request, HttpServletResponse response) throws Exception {
        List<GoodsVO> lists = goodsService.selectAllGoods();
        ModelAndView mav = new ModelAndView("/goods/list2");
        mav.addObject("list",lists);
        return mav;
    }
}
