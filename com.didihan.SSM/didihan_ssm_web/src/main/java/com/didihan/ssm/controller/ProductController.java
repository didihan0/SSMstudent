package com.didihan.ssm.controller;


import com.didihan.ssm.*;
import com.didihan.ssm.service.IproductService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.sql.Date;
import java.util.List;

@Controller
@RequestMapping("/product")
public class ProductController {

    @Autowired
    private IproductService productService;
    /**
     * 完成登陆上的操作
     * @param login
     * @return
     * @throws Exception
     */
    @RequestMapping("/login.do")
    public @ResponseBody returnstudent login(@RequestBody login login) throws Exception{
        System.out.println("执行成功");
        System.out.println(login);
        if (login.getSort().equals("0")){
            domain student = productService.loginst(login.getAccount(), login.getPassword());
            returnstudent rs = new returnstudent();
            rs.setNumber(student.getNumber());
            rs.setName(student.getName());
            rs.setSystem(student.getSystem());
            rs.setClassrom(student.getClassrom());
            rs.setPay(student.getPay());
            if(student.getSex().equals("男")){
                rs.setRoom(productService.rqmanroom(student.getNumber()));
            }
            else {
                rs.setRoom(productService.rqwomanroom(student.getNumber()));
            }
            System.out.println(rs);
            return rs;
        }
        else{
            returnstudent rs = new returnstudent();
            mm administrators = productService.logint(login.getAccount(),login.getPassword());
            return rs;
        }
    }


    /**
     * 跳转到管理员页面
     * @param page
     * @param size
     * @return
     * @throws Exception
     */
    @RequestMapping("/tz.do")
    public ModelAndView tz(@RequestParam(name = "page",required = true,defaultValue = "1") int page,@RequestParam(name = "size",required = true,defaultValue = "5")int size) throws Exception {
        ModelAndView mv = new ModelAndView();
        List<domain> st = productService.findall(page,size);
        PageInfo pageInfo = new PageInfo(st);
        mv.addObject("page",pageInfo);
        mv.setViewName("administrators");
        return mv;
    }


    /**
     * 改变支付情况模块的实现
     * @param number
     * @param page
     * @param size
     * @return
     * @throws Exception
     */
    @RequestMapping("/modify.do")
    public ModelAndView modify(@RequestParam(name = "number",required = true) int number,@RequestParam(name = "page",required = true,defaultValue = "1") int page,@RequestParam(name = "size",required = true,defaultValue = "5")int size) throws Exception {
        ModelAndView mv = new ModelAndView();
        productService.updatepay(number);
        List<domain> st = productService.findall(page,size);
        PageInfo pageInfo = new PageInfo(st);
        mv.addObject("page",pageInfo);
        mv.setViewName("administrators");
        return mv;
    }


    /**
     * 删除模块的实现
     * @param number
     * @param page
     * @param size
     * @return
     * @throws Exception
     */
    @RequestMapping("/delete.do")
    public ModelAndView delete(@RequestParam(name = "number",required = true) int number,@RequestParam(name = "page",required = true,defaultValue = "1") int page,@RequestParam(name = "size",required = true,defaultValue = "5")int size) throws Exception {
        ModelAndView mv = new ModelAndView();
        System.out.println(number);
        productService.deletest(number);
        System.out.println("删除成功");
        List<domain> st = productService.findall(page,size);
        PageInfo pageInfo = new PageInfo(st);
        mv.addObject("page",pageInfo);
        mv.setViewName("administrators");
        return mv;
    }


    /**
     * 跳转到男生宿舍
     * @param page
     * @param size
     * @return
     * @throws Exception
     */
    @RequestMapping("/tzman.do")
    public ModelAndView tzman(@RequestParam(name = "page",required = true,defaultValue = "1") int page,@RequestParam(name = "size",required = true,defaultValue = "5")int size) throws Exception {
        ModelAndView mv = new ModelAndView();
        List<room> stman = productService.findmanroom(page,size);
        PageInfo pageInfoman = new PageInfo(stman);
        mv.addObject("pageman",pageInfoman);
        mv.setViewName("administrators2");
        return mv;
    }


    /**
     * 跳转到女生宿舍
     * @param page
     * @param size
     * @return
     * @throws Exception
     */
    @RequestMapping("/tzwoman.do")
    public ModelAndView tzwoman(@RequestParam(name = "page",required = true,defaultValue = "1") int page,@RequestParam(name = "size",required = true,defaultValue = "5")int size) throws Exception {
        ModelAndView mv = new ModelAndView();
        List<room> stwoman = productService.findwomanroom(page,size);
        PageInfo pageInfowoman = new PageInfo(stwoman);
        mv.addObject("pagewoman",pageInfowoman);
        mv.setViewName("administrators3");
        return mv;
    }

    /**
     * 学生登陆
     * @return
     */
    @RequestMapping("/gotoschool.do")
    public ModelAndView loginst(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("indexst");
        return mv;
    }

    /**
     * 搜索学生的个人信息
     * @param number
     * @return
     * @throws Exception
     */
    @RequestMapping("/sstext.do")
    public ModelAndView sstext(@RequestParam(name = "number",required = true,defaultValue = "1") String number) throws Exception {
        System.out.println("进入搜索");
        ModelAndView mv = new ModelAndView();
        int x = Integer.parseInt(number);
        domain st = productService.findone(x);
        System.out.println("搜索完毕");
        mv.addObject("st",st);
        System.out.println("创建成功！！"+st.getNumber());
        mv.setViewName("administrators4");
        return mv;
    }


    /**
     * 搜索男生宿舍
     * @param number
     * @return
     * @throws Exception
     */
    @RequestMapping("/sstextman.do")
    public ModelAndView sstextman(@RequestParam(name = "number",required = true,defaultValue = "1") String number) throws Exception {
        System.out.println("进入搜索");
        ModelAndView mv = new ModelAndView();
        int x = Integer.parseInt(number);
        room st = productService.findmanroomone(x);
        System.out.println("搜索完毕");
        mv.addObject("st",st);
        System.out.println("创建成功！！"+st.getNumber());
        mv.setViewName("administrators5");
        return mv;
    }


    /**
     * 搜素女生宿舍
     * @param number
     * @return
     * @throws Exception
     */
    @RequestMapping("/sstextwoman.do")
    public ModelAndView sstextwoman(@RequestParam(name = "number",required = true,defaultValue = "1") String number) throws Exception {
        System.out.println("进入搜索");
        ModelAndView mv = new ModelAndView();
        int x = Integer.parseInt(number);
        room st = productService.findwomanroomone(x);
        System.out.println("搜索完毕");
        mv.addObject("st",st);
        System.out.println("创建成功！！"+st.getNumber());
        mv.setViewName("administrators6");
        return mv;
    }


    /**
     * 跳转到notice页面
     * @param page
     * @param size
     * @return
     * @throws Exception
     */
    @RequestMapping("/gotonotice.do")
    public ModelAndView gotonotice(@RequestParam(name = "page",required = true,defaultValue = "1") int page,@RequestParam(name = "size",required = true,defaultValue = "5")int size) throws Exception{
        ModelAndView mv = new ModelAndView();
        System.out.println("进入搜索所有通知");
        List<notice> notice = productService.findnotice(page,size);
        System.out.println("搜素通知完毕");
        PageInfo pageInfo = new PageInfo(notice);
        mv.addObject("notice",pageInfo);
        System.out.println("装备跳转,notice="+notice.get(0).toString());
        mv.setViewName("notice");
        return mv;
    }


    /**
     * 删除通知信息
     * @param number
     * @param page
     * @param size
     * @return
     * @throws Exception
     */
    @RequestMapping("/deletenotice.do")
    public ModelAndView deletenotice(@RequestParam(name = "number",required = true) int number, @RequestParam(name = "page",required = true,defaultValue = "1") int page, @RequestParam(name = "size",required = true,defaultValue = "5")int size)throws Exception{
        ModelAndView mv = new ModelAndView();
        System.out.println("进入删除");
        productService.deletenotice(number);
        System.out.println("删除完成");
        List<notice> notices = productService.findnotice(page, size);
        PageInfo pageInfo = new PageInfo(notices);
        mv.addObject("notice",pageInfo);
        mv.setViewName("notice");
        return mv;
    }

    /**
     * 跳转到发布新通知页面
     * @return
     * @throws Exception
     */
    @RequestMapping("/newnotice.do")
    public ModelAndView newnotice()throws Exception{
        ModelAndView mv = new ModelAndView();
        mv.setViewName("newnotice");
        return mv;
    }


    /**
     * 发布通知按钮的实现
     * @param title
     * @param notice
     * @return
     * @throws Exception
     */
    @RequestMapping("/releasenotice.do")
    public ModelAndView releasenotice(@RequestParam(name = "title",required = true)String title,@RequestParam(name = "notice",required = true)String notice)throws Exception{
        ModelAndView mv = new ModelAndView();
        System.out.println("进入发布通知title:"+title+"notice:"+notice);
        productService.insertnotice(title,notice,new Date(System.currentTimeMillis()));
        System.out.println("发布通知成功");
        List<notice> notices = productService.findnotice(1, 5);
        PageInfo pageInfo = new PageInfo(notices);
        mv.addObject("notice",pageInfo);
        mv.setViewName("notice");
        return mv;
    }


    /**
     * 修改和查看通知内容
     * @param number
     * @param title
     * @param notice
     * @return
     * @throws Exception
     */
    @RequestMapping("/releasenoticeagain.do")
    public ModelAndView releasenoticeagain(@RequestParam(name = "number",required = true)int number,@RequestParam(name = "title",required = true)String title,@RequestParam(name = "notice",required = true)String notice)throws Exception{
        ModelAndView mv = new ModelAndView();
        System.out.println("进入发布通知title:"+title+"notice:"+notice);
        productService.updatenotice(number,title,notice);
        System.out.println("发布通知成功");
        List<notice> notices = productService.findnotice(1, 5);
        PageInfo pageInfo = new PageInfo(notices);
        mv.addObject("notice",pageInfo);
        mv.setViewName("notice");
        return mv;
    }

    /**
     * 查看单条内容
     * @param number
     * @return
     * @throws Exception
     */
    @RequestMapping("findonenotice.do")
    public ModelAndView findonenotice(@RequestParam(name = "number",required = true)int number)throws Exception{
        ModelAndView mv = new ModelAndView();
        notice notice = productService.findonenotice(number);
        mv.addObject("notice",notice);
        mv.setViewName("newnotice2");
        return mv;
    }


    @RequestMapping("gotostudent.do")
    public ModelAndView gotostudent(@RequestParam(name = "number",required = true)int number,@RequestParam(name = "page",required = true,defaultValue = "1") int page,@RequestParam(name = "size",required = true,defaultValue = "5")int size)throws Exception{
        ModelAndView mv = new ModelAndView();
        System.out.println("获取学生学习中");
        domain st = productService.findone(number);
        System.out.println("获取成功");
        mv.addObject("st",st);
        int room;
        System.out.println("获取学生宿舍中中");
        if (st.getSex().equals("男")){
            room = productService.rqmanroom(number);
        }else {
            room = productService.rqwomanroom(number);
        }
        System.out.println("获取成功");
        mv.addObject("room",room);
        System.out.println("获取通知中");
        List<notice> notices = productService.findnotice(page, size);
        System.out.println("获取成功");
        PageInfo pageInfo = new PageInfo(notices);
        mv.addObject("notice",pageInfo);
        System.out.println("准备跳转");
        mv.setViewName("student");
        return mv;
    }
}
