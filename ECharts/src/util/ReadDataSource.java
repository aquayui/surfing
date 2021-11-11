package util;

import com.mchange.v2.c3p0.ComboPooledDataSource;

import javax.sql.DataSource;

/**
 * Created by teaGod on 2017/9/19.
 */
public class ReadDataSource {
    public static DataSource dataSource;

    static {
        dataSource = new ComboPooledDataSource();
    }

    public static DataSource getDataSource(){
        return dataSource;
    }
}
