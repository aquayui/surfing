package dao;


import entity.Goods;

import java.sql.SQLException;
import java.util.List;

/**
 * Created by teaGod on 2017/9/18.
 */
public interface GoodsDao {
    List<Goods> queryAllGoods() throws SQLException;
}