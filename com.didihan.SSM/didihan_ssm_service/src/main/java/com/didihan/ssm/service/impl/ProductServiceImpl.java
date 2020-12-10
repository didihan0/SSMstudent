package com.didihan.ssm.service.impl;

import com.didihan.ssm.dao.Iproductdao;
import com.didihan.ssm.domain;
import com.didihan.ssm.mm;
import com.didihan.ssm.notice;
import com.didihan.ssm.room;
import com.didihan.ssm.service.IproductService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.sql.Date;
import java.util.List;
@Service
@Transactional
public class ProductServiceImpl implements IproductService{
    @Autowired
    private Iproductdao dao;
    /**
     * 实现查找全部
     * @return
     * @throws Exception
     */
    @Override
    public List<domain> findall(int page,int size) throws Exception {
        PageHelper.startPage(page, size);
        return dao.findall();
    }

    /**
     * 实现查找单个
     * @param number
     * @return
     * @throws Exception
     */
    @Override
    public domain findone(int number) throws Exception {
        return dao.findone(number);
    }

    /**
     * 实现修改登陆
     * @param number
     * @throws Exception
     */
    @Override
    public void updatereport(int number) throws Exception {
        dao.updatereport(number);
    }

    /**
     * 实现修改支付
     * @param number
     * @throws Exception
     */
    @Override

    public void updatepay(int number) throws Exception {
        dao.updatepay(number);
    }

    @Override
    public domain loginst(String account, String password) throws Exception{
        System.out.println("account="+account+"password="+password);


        mm mm = dao.findlogin(password);
        System.out.println(mm);
        if (!mm.getAccount().equals(account)){
            System.out.println("账号密码错误！！！！");
            return null;
        }
        //登陆成功后修改登陆情况
        System.out.println("登陆成功修改登陆情况...");
        dao.updatereport(mm.getNumber());
        System.out.println("登陆情况修改成功！！！");
        //添加加入宿舍(4人一间，20间一层)
        //得到学生的信息
        domain domain = dao.findone(mm.getNumber());
        System.out.println(domain);
        //判断是否已经加入宿舍
        int tf = dao.findtfdroman(domain.getNumber());
        if(tf == 0) {
            //判断男女加入宿舍
            if (domain.getSex().equals("男")) {
                // 获取宿舍的人数
                int man = dao.summan();
                System.out.println(man);
                int x = man / 4 + 1;
                int y = x / 20 + 1;
                int sum = y * 100 + x;
                //将学生添加入宿舍
                System.out.println("正在添加宿舍...");
                System.out.println(domain.getNumber() + " " + domain.getName() + " " + sum);
                dao.Insertdormitoryman(domain.getNumber(), domain.getName(), sum);
                System.out.println("宿舍添加成功！！！");
            } else if (domain.getSex().equals("女")) {
                // 获取宿舍的人数
                int man = dao.sumwoman();
                int x = man / 4 + 1;
                int y = x / 20 + 1;
                int sum = y * 100 + x;
                //将学生添加入宿舍
                System.out.println("正在添加宿舍...");
                System.out.println(domain.getNumber() + " " + domain.getName() + " " + sum);
                dao.Insertdormitorywoman(domain.getNumber(), domain.getName(), sum);
                System.out.println("正在添加宿舍...");
            }
        }
        System.out.println("登陆完成!!!");
        //返回学生的信息
        return domain;
    }

    @Override
    public mm logint(String account, String password) throws Exception {
        System.out.println("管理员申请登陆");
        System.out.println("account="+account+"password="+password);
        mm mm = dao.findloginad(account);
        System.out.println(mm);
        if (!mm.getAccount().equals(account)){
            System.out.println("账号密码错误！！！！");
            return null;
        }
        System.out.println("管理员登陆成功");
        return mm;
    }

    @Override
    public int rqmanroom(int number) throws Exception {
        return dao.rqmanroom(number);
    }

    @Override
    public int rqwomanroom(int number) throws Exception {
        return dao.rqwomanroom(number);
    }

    @Override
    public List<room> findmanroom(int page,int size) throws Exception {
        PageHelper.startPage(page, size);
        return dao.findmanroom();
    }

    @Override
    public List<room> findwomanroom(int page,int size) throws Exception {
        PageHelper.startPage(page, size);
        return dao.findwomanroom();
    }

    @Override
    public void deletest(int number) throws Exception {
        domain st = findone(number);
        System.out.println("进入删除dao层");
        dao.deletest(number);
        System.out.println("成功删除学生基本信息");
        System.out.println(st.getSex());
        if (st.getSex().equals("男")) {
            dao.deleteman(number);
        } else{
            dao.deletewoman(number);
        }
    }

    @Override
    public room findmanroomone(int number) throws Exception {
        return dao.findmanroomone(number);
    }

    @Override
    public room findwomanroomone(int number) throws Exception {
        return dao.findwomanroomone(number);
    }

    @Override
    public List<notice> findnotice(int page,int size) throws Exception {
        PageHelper.startPage(page, size);
        return dao.findnotice();
    }

    @Override
    public notice findonenotice(int number) throws Exception {
        return dao.findonenotice(number);
    }

    @Override
    public void insertnotice(String title, String notice, Date date) throws Exception {
        System.out.println("service  title:"+title+"notice:"+notice+"date:"+date);
        dao.insertnotice(title,notice,date);
    }

    @Override
    public void deletenotice(int number) throws Exception {
        dao.deletenotice(number);
    }

    @Override
    public void updatenotice(int number, String title, String notice) throws Exception {
        dao.updatenotice(number, title, notice);
    }
}
