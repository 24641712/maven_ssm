package cn.lnu.serviceimpl.data;

import cn.lnu.dao.data.TableDataDao;
import cn.lnu.entity.TableData;
import cn.lnu.service.IndexService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by IntelliJ IDEA
 * @author ChengChuangLiang
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


}
