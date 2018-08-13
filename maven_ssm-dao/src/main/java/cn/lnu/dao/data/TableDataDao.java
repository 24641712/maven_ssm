package cn.lnu.dao.data;

import cn.lnu.entity.data.TableData;

import java.util.HashMap;
import java.util.List;

/**
 * Created by IntelliJ IDEA
 * @author ChengChuangLiang
 * @date 2018/8/5
 */
public interface TableDataDao {

    public TableData getTableData(TableData tableData);//条件查询

    public int addTableData(TableData tableData);//添加数据

    public int updateTableData(TableData tableData);//更新数据

    public int  deleteTableData(Integer id);//删除数据

    public List<TableData> find();//查找所有数据

    public int selectCount();//显示数据总条数

    public List<TableData> findByPage(HashMap<String,Object> map); //按页查找数据



}
