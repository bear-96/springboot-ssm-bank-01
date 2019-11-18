package com.xwx.springbootssmbank.mapper;


import com.xwx.springbootssmbank.bean.Admin;
import com.xwx.springbootssmbank.bean.Log;
import com.xwx.springbootssmbank.bean.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;

public interface LoginAndRigesterMapper {
    //      管理员登录
    @Select("select *from t_admin where name=#{name}")
    public Admin getAdminByName(String name);

    //      用户登录
    @Select("select user_id,user_name,user_password,user_flag,balance from t_user where user_name=#{username}")
    public User getUserByName(String username);

    //     用户注册
    @Select("select user_name from t_user where user_name=#{username}")
    public String register(String username);
    @Options(useGeneratedKeys = true ,keyProperty = "userid")
    @Insert("insert into t_user(user_name,user_password,user_flag,balance) value(#{username},#{userpassword},#{userflag},#{balance}) ")
    public boolean insertUser(User user);
}
