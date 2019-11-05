package dao;

import javax.sql.RowSet;
import javax.sql.RowSetEvent;
import javax.sql.RowSetListener;
import javax.sql.rowset.RowSetFactory;
import javax.sql.rowset.RowSetProvider;

/**
 * @author chenjianhui on 2019/11/05
 */
public class RowSetUtils {

    public void testRowSet(){
        RowSetFactory rowSetFactory = null;
        RowSet rowSet = null;
        try {
            rowSetFactory = RowSetProvider.newFactory();
            rowSet = rowSetFactory.createJdbcRowSet();
            rowSet.setUrl("jdbc:mysql://localhost:3306/grafana?serverTimezone=GMT%2B8");
            rowSet.setUsername("root");
            rowSet.setPassword("root");

            rowSet.setCommand("select * from tb_employee");
            rowSet.execute();

            //加入监听器
            rowSet.addRowSetListener(new MyListener());
            while (rowSet.next()){
                System.out.println(rowSet.getInt(1));
                System.out.println(rowSet.getString(2));
                System.out.println(rowSet.getString(3));
            }
        }catch (Exception e){

        }finally {
            if(rowSet != null){
                try {
                    rowSet.close();
                }catch (Exception e){

                }
            }
        }
    }
}

class MyListener implements RowSetListener{
    @Override
    public void rowSetChanged(RowSetEvent event) {
        System.out.println("rowset 改变");
    }

    @Override
    public void rowChanged(RowSetEvent event) {
        System.out.println("行改变");
    }

    @Override
    public void cursorMoved(RowSetEvent event) {
        System.out.println("游标移动");
    }
}