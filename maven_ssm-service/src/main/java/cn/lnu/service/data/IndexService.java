package cn.lnu.service.data;

import cn.lnu.entity.data.TableData;
import cn.lnu.entity.page.PageBean;

import java.util.List;

/**
 * Created by IntelliJ IDEA
 * @author ChuangLiang Cheng
 * @date  2018/8/5
 */

public interface IndexService {
    public TableData getTableData(TableData tableData);//条件查询

    public int addTableData(TableData tableData);//添加数据

    public int updateTableData(TableData tableData);//更新数据

    public int  deleteTableData(Integer id);//删除数据

    public List<TableData> find();//查找所有数据

    public PageBean<TableData> findByPage(int currentPage); //按页查询数据



}
