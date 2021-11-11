package servlet;

import dao.GoodsDao;
import dao.GoodsDaoImpl;
import entity.Goods;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

/**
 * Created by teaGod on 2017/9/25.
 */
@WebServlet(name = "ServletQueryAllGoods", value = "/ServletQueryAllGoods")
public class ServletQueryAllGoods extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        GoodsDao goodsDao = new GoodsDaoImpl();
        List<Goods> goodsList;
        try {
            goodsList = goodsDao.queryAllGoods();
            request.setAttribute("goodsList", goodsList);
            //System.out.println(goodsList);
            
            request.getRequestDispatcher("/zhu.jsp").forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
}