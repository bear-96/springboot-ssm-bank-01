package com.xwx.springbootssmbank.mapper;

import com.xwx.springbootssmbank.bean.User;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface AdminMapper {


    @Select("select *from t_user")
    public List<User> getAllUser();

    @Update("update t_user set user_flag=#{flag} where user_id=#{id}")
    public boolean userModifiy(int id , int flag);
}
