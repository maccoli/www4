package com.www2.util;
import java.sql.Connection;
import java.sql.SQLException;
import javax.sql.DataSource;
import com.mchange.v2.c3p0.ComboPooledDataSource;
 
public class JdbcUtils {
       /**
        * �ͷ�����
        * @param connection
        */
       public static void releaseConnection(Connection connection){
              try {
                     if(connection != null ) {
                            connection.close();
                     }
              }catch (Exception e) {
                     e.printStackTrace();
              }
       }
       private static DataSource dataSource = null;
       static{
              //dataSource��Դֻ�ܳ�ʼ��һ��
              dataSource= new ComboPooledDataSource("mvcApp");
       }
       /**
        * ��ȡ����
        * @return
        * @throws SQLException
        */
       public static Connection getConnection() throws SQLException{
              return dataSource.getConnection();
       }
}