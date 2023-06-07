package com.Medical.mapper;

import com.Medical.domain.WorkDay;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface WorkDayMapper {

    @Insert("insert into workday values(#{id},#{doc_id},#{workTime},#{ampm},#{nsnum},#{state})")
//    用于插入医生工作日的信息
    void insert(WorkDay workDay);

    @Select("select * from workday")
    @Results({
            @Result(column = "id", property = "id"),
            @Result(column = "doc_id", property = "doc_id"),
            @Result(column = "workTime", property = "workTime"),
            @Result(column = "ampm", property = "ampm"),
            @Result(column = "nsnum", property = "nsnum"),
            @Result(column = "state", property = "state")
    })
//    先写一个筛选出  所有信息的  之后再写其他
    List<WorkDay> findAll();

    //    用于显示可预约表格的特殊查询方法
    @Select("select * from workday where doc_id = #{doc_id} and workTime >= now() and state = '出诊' and nsnum > 0 order by worktime asc")
    @Results({
            @Result(column = "id", property = "id"),
            @Result(column = "doc_id", property = "doc_id"),
            @Result(column = "workTime", property = "workTime"),
            @Result(column = "ampm", property = "ampm"),
            @Result(column = "nsnum", property = "nsnum"),
            @Result(column = "state", property = "state")
    })
    List<WorkDay> queryWorkDayByDocId(@Param("doc_id") int doc_id);

    @Update("update workday set nsnum = #{nsnum} where id = #{id}")
    void updateNsNum(@Param("nsnum") int nsnum, @Param("id") int id);

    @Select("select * from workDay where id = #{id}")
    @Results({
            @Result(column = "id", property = "id"),
            @Result(column = "doc_id", property = "doc_id"),
            @Result(column = "workTime", property = "workTime"),
            @Result(column = "ampm", property = "ampm"),
            @Result(column = "nsnum", property = "nsnum"),
            @Result(column = "state", property = "state")
    })
    WorkDay queryWorkDayById(@Param("id") int id);

}
