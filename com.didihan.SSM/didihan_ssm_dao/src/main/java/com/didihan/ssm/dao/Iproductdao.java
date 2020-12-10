package com.didihan.ssm.dao;

import com.didihan.ssm.domain;
import com.didihan.ssm.mm;
import com.didihan.ssm.notice;
import com.didihan.ssm.room;
import org.apache.ibatis.annotations.*;

import java.sql.Date;
import java.util.List;

public interface Iproductdao {
    /**
     * 查询所有学生信息
     * @return
     * @throws Exception
     */
    @Select("select * from student")
    public List<domain> findall() throws Exception;

    /**
     * 用学号查找单人
     * @param number
     * @return
     * @throws Exception
     */
    @Select("select * from student where number = #{number}")
    public domain findone(int number) throws Exception;


    /**
     * 修改登陆情况
     * @param number
     * @throws Exception
     */
    @Update("update student set report = 1 where number = #{number}")
    public void updatereport(int number) throws Exception;

    /**
     * 修改支付情况
     * @param number
     * @throws Exception
     */
    @Update("update student set pay = 1 where number = #{number}")
    public void updatepay(int number) throws Exception;

    /**
     * 添加男宿舍成员
     * @param number
     * @param name
     * @param room
     * @throws Exception
     */
    @Insert("insert into dorman value(#{number},#{name},#{room})")
    public void Insertdormitoryman(@Param("number") int number,@Param("name") String name,@Param("room") int room) throws Exception;


    /**
     * 添加女宿舍成员
     * @param number
     * @param name
     * @param room
     * @throws Exception
     */
    @Insert("insert into `dorwoman` value(#{number},#{name},#{room})")
    public void Insertdormitorywoman(@Param("number") int number,@Param("name") String name,@Param("room") int room) throws Exception;


    /**
     * 查询现在的男宿舍人数
     * @return
     * @throws Exception
     */
    @Select("select count(*) from `dorman`")
    public int summan() throws Exception;

    /**
     * 查询现在的女宿舍人数
     * @return
     * @throws Exception
     */
    @Select("select count(*) from `dorwoman`")
    public int sumwoman() throws Exception;


    /**
     * 查找所有男生宿舍现有成员
     * @return
     * @throws Exception
     */
    @Select("select * from `dorman`")
    public List<room> findmanroom() throws Exception;

    /**
     * 查找所有男生宿舍现有成员
     * @return
     * @throws Exception
     */
    @Select("select * from `dorwoman`")
    public List<room> findwomanroom() throws Exception;

    /**
     * 查找账号密码和学号
     * @param password
     * @return
     */
    @Select("SELECT * FROM mm where `password` = #{password}")
    public mm findlogin(String password);

    /**
     * 查找学生是否已经录入宿舍
     * @param number
     * @return
     */
    @Select("select count(*) from `dorman` where number = #{number}")
    public int findtfdroman(int number);

    /**
     * 查找管理员账号信息
     * @param account
     * @return
     */
    @Select("select * from administrators where account = #{account}")
    public mm findloginad(String account);

    /**
     * 利用学号查找男生宿舍
     * @param number
     * @return
     */
    @Select("select room from dorman where number = #{number}")
    public int rqmanroom(int number);

    /**
     * 利用学号查找女生宿舍
     * @param number
     * @return
     */
    @Select("select room from dorwoman where number = #{number}")
    public int rqwomanroom(int number);


    /**
     * 删除学生基本信息
     * @param number
     */
    @Delete("delete from student where number = #{number}")
    public void deletest(int number);

    @Delete("delete from dorman where number = #{number}")
    public void deleteman(int number);

    @Delete("delete from dorwoman where number = #{number}")
    public void deletewoman(int number);


    /**
     * 与宿舍中查找单人
     * @param number
     * @return
     * @throws Exception
     */
    @Select("select * from dorman where number = #{number}")
    public room findmanroomone(int number) throws Exception;

    @Select("select * from dorwoman where number = #{number}")
    public room findwomanroomone(int number) throws Exception;

    /**
     * 以下是关于通知的操作，这是查找所有通知
     * @return
     * @throws Exception
     */
    @Select("select * from notice")
    public List<notice> findnotice() throws Exception;

    @Select("select * from notice where number = #{number}")
    public notice findonenotice(int number) throws Exception;
    /**
     * 创建通知
     * @param title
     * @param notice
     * @param date
     * @throws Exception
     */
    @Insert("insert into notice (title,notice,date)value(#{title},#{notice},#{date})")
    public void insertnotice(@Param("title") String title,@Param("notice") String notice,@Param("date") Date date) throws Exception;

    /**
     * 根据发布时间去删除通知
     * @param number
     * @throws Exception
     */
    @Delete("delete from notice where number = #{number}")
    public void deletenotice(int number) throws Exception;

    @Update("update notice set title = #{title},notice = #{notice} where number = #{number}")
    public void updatenotice(@Param("number") int number,@Param("title") String title,@Param("notice") String notice)throws Exception;
}
