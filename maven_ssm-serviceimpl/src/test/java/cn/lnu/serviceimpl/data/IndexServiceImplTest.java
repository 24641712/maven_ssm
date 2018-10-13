package cn.lnu.serviceimpl.data;

import cn.lnu.dao.data.TableDataDao;
import cn.lnu.entity.data.TableData;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

import java.util.List;

import static org.junit.Assert.*;

/**
 * Created by IntelliJ IDEA2018.1.3
 * @author： CCL
 * @date:
 * @description:
 */

@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(locations = {"classpath*:config/applicationContext.xml"})
public class IndexServiceImplTest {

    @Autowired
    private TableDataDao tableDataDao;

    @Test
    public void deleteTableData() {
    }

    @Test
    public void find() {

        List<TableData> list = tableDataDao.find();
        for (TableData tableData : list){
            System.out.println(tableData.toString());
        }
        System.out.println("hello");
    }

    @Test
    public void findByPage() {
    }
}