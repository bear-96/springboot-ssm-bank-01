package com.xwx.springbootssmbank.mapper;

import com.xwx.springbootssmbank.bean.Log;
import org.apache.ibatis.annotations.*;

import java.util.List;

//@Mapper
public interface UserMapper {

//    查询用户id
    @Select("select user_id from t_user where user_name=#{username}")
    public Object getIdByName(String username);

//    余额查询
    @Select("select balance from t_user where user_name=#{username}")
    public double getBalanceByName(String username);

//    存款
    @Update("update t_user set balance=#{balance} where user_name=#{username}")
    public int deposit(String username,double balance);

    @Options(useGeneratedKeys = true ,keyProperty = "logid")
    @Insert("insert into t_log (log_type,log_amount,userid) values (#{logtype},#{logamount},#{userid})")
    public int adddeposit(Log log);
//    取款
    @Update("update t_user set balance=#{balance} where user_name=#{username}")
    public int withdrawals(String username,double balance);

    @Options(useGeneratedKeys = true ,keyProperty = "logid")
    @Insert("insert into t_log(log_type,log_amount,userid) values (#{logtype},#{logamount},#{userid})")
    public int adddwithdrawals(Log log);

//   操作明细
    @Select("select log_id,log_type,log_amount,userid from t_log,t_user where t_user.user_id = t_log.userid and t_user.user_name=#{username}")
    public List<Log> getAllBell(String username);

}
