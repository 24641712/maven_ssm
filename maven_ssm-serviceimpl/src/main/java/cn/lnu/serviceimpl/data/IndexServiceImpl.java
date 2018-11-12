package cn.lnu.serviceimpl.data;

import cn.lnu.dao.data.TableDataDao;
import cn.lnu.entity.data.TableData;
import cn.lnu.entity.page.PageBean;
import cn.lnu.service.data.IndexService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;

/**
 * Created by IntelliJ IDEA
 * @author CCL
 * @date 2018/8/5
 */
@Service("indexService")
public class IndexServiceImpl implements IndexService {
    @Resource
    protected TableDataDao tableDataDao;

    @Override
    public TableData getTableData(TableData tableData) {
        return tableDataDao.getTableData(tableData);
    }

    @Override
    public int addTableData(TableData tableData) {
        return tableDataDao.addTableData(tableData);
    }

    @Override
    public int updateTableData(TableData tableData) {
        return tableDataDao.updateTableData(tableData);
    }

    @Override
    public int deleteTableData(Integer id) {
        return tableDataDao.deleteTableData(id);
    }

    @Override
    public List<TableData> find() {
        return tableDataDao.find();
    }

    @Override
    public PageBean<TableData> findByPage(int currentPage) {

        HashMap<String,Object> map = new HashMap<String,Object>();

        PageBean<TableData> pageBean = new PageBean<TableData>();

        //显示当前页数
        pageBean.setCurrPage(currentPage);

        //每页显示的数据数

        int pageSize = 5;

        pageBean.setPageSize(pageSize);

        int totalCount = tableDataDao.selectCount();

        pageBean.setTotalCount(totalCount);

        //封装总页数
        double tc = totalCount;

        //计算数据页数
        Double num = Math.ceil(tc/pageSize);

        //将当前页放入javabean中
        pageBean.setTotalPage(num.intValue());

        //数据的起始位置
        map.put("start",(currentPage-1)*pageSize);

        //数据大小
        map.put("size",pageSize);

        //封装每页的数据
        List<TableData> list = tableDataDao.findByPage(map);
        System.out.println("一共有："+list.size()+"条数据");

        //将每页的数据放入javabean中
        pageBean.setLists(list);

        //返回javabean
        return pageBean;
    }


}
