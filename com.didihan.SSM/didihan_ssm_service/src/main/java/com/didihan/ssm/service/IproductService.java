package com.didihan.ssm.service;

import com.didihan.ssm.domain;
import com.didihan.ssm.mm;
import com.didihan.ssm.notice;
import com.didihan.ssm.room;
import org.apache.ibatis.annotations.Param;

import java.sql.Date;
import java.util.List;

/**
 * 业务层
 */
public interface IproductService {
    /**
     * 在业务层中完成findall功能
     * @return
     * @throws Exception
     */
    public List<domain> findall(int page,int size) throws Exception;

    /**
     * 在业务层中查找单人
     * @return
     * @throws Exception
     */
    public domain findone(int number) throws Exception;

    /**
     * 在业务层中修改登陆情况
     * @param number
     * @throws Exception
     */
    public void updatereport(int number) throws Exception;


    /**
     * 在业务层中修改支付情况
     * @param number
     * @throws Exception
     */
    public void updatepay(int number) throws Exception;


    /**
     * 在业务层中实现学生登陆的所有操作
     * @param account
     * @param password
     * @return
     */
    public domain loginst(String account,String password) throws Exception;

    /**
     * 在业务层中实现管理员的登陆
     * @param account
     * @param password
     * @return
     * @throws Exception
     */
    public mm logint(String account, String password) throws Exception;

    /**
     * 在业务层中实现利用学号查找男宿舍号
     * @param number
     * @return
     * @throws Exception
     */
    public int rqmanroom(int number) throws Exception;

    /**
     * 在业务层中实现利用学号查找女宿舍号
     * @param number
     * @return
     * @throws Exception
     */
    public int rqwomanroom(int number) throws Exception;

    /**
     * 在业务层中实现查找男生宿舍
     * @return
     * @throws Exception
     */
    public List<room> findmanroom(int page,int size) throws Exception;


    /**
     * 在业务层中实现查找女生宿舍
     * @return
     * @throws Exception
     */
    public List<room> findwomanroom(int page,int size) throws Exception;


    /**
     * 业务层中实习删除
     * @param number
     * @throws Exception
     */
    public void deletest(int number) throws Exception;


    /**
     * 完成查找男生宿舍
     * @param number
     * @return
     * @throws Exception
     */
    public room findmanroomone(int number) throws Exception;

    /**
     * 完成查找女生宿舍
     * @param number
     * @return
     * @throws Exception
     */
    public room findwomanroomone(int number) throws Exception;


    /**
     * 查找所有通知
     * @return
     * @throws Exception
     */
    public List<notice> findnotice(int page,int size) throws Exception;

    /**
     * 查找单个的通知
     * @param number
     * @return
     * @throws Exception
     */
    public notice findonenotice(int number) throws Exception;
    /**
     * 增加通知
     * @param title
     * @param notice
     * @param date
     * @throws Exception
     */
    public void insertnotice(String title, String notice, Date date) throws Exception;

    /**
     * 删除通知
     * @param number
     * @throws Exception
     */
    public void deletenotice(int number) throws Exception;

    /**
     * 修改通知
     * @param number
     * @param title
     * @param notice
     * @throws Exception
     */
    public void updatenotice(@Param("number") int number, @Param("title") String title, @Param("notice") String notice)throws Exception;

}
