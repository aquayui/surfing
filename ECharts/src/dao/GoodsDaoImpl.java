package dao;

import entity.Goods;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;
import util.ReadDataSource;

import javax.sql.DataSource;
import java.sql.SQLException;
import java.util.List;

/**
 * Created by teaGod on 2017/9/18.
 */
public class GoodsDaoImpl implements GoodsDao {
    DataSource dataSource = ReadDataSource.getDataSource();

    @Override
    public List<Goods> queryAllGoods() throws SQLException {
        QueryRunner queryRunner = new QueryRunner(dataSource);
        String sql = "select * from goods";
        return queryRunner.query(sql, new BeanListHandler<>(Goods.class));
    }
}