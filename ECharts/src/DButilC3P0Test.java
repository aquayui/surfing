import dao.GoodsDao;
import dao.GoodsDaoImpl;
import entity.Goods;

import java.sql.SQLException;

/**
 * Created by teaGod on 2017/9/19.
 */
public class DButilC3P0Test {
    public static void main(String[] args) {
        GoodsDao goodsDao = new GoodsDaoImpl();
        try {
            for (Goods goods :
                    goodsDao.queryAllGoods()) {
                System.out.println(goods);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}