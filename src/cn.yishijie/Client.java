import dao.*;

/**
 * @author chenjianhui on 2019/11/01
 */
public class Client {

    public static void main(String[] args) {
        try {
            //保存信息到tb_employee
            //String sql = "insert into tb_employee(firstName,lastName) values('jeff1','chan')";
            //DaoStatementUtils daoStatementUtils = new DaoStatementUtils();
            //daoStatementUtils.save(sql);
            //String sql = "select * from tb_employee";
            //daoStatementUtils.select2(sql);
            //daoStatementUtils.testSuport();
            //daoStatementUtils.testMetadata();

            //DaoPrepareStatmentUtils daoPrepareStatmentUtils = new DaoPrepareStatmentUtils();
            //daoPrepareStatmentUtils.select();
            //daoPrepareStatmentUtils.update();

            //DaoTransactionUtils daoTransactionUtils = new DaoTransactionUtils();
            //daoTransactionUtils.update();

            //DaoPrepareCallUtils daoPrepareCallUtils = new DaoPrepareCallUtils();
            //daoPrepareCallUtils.callProcedureIn();
            //daoPrepareCallUtils.callProcedureInOut();
            //daoPrepareCallUtils.callProcedure();
            //daoPrepareCallUtils.callFunction();

            RowSetUtils rowSetUtils = new RowSetUtils();
            rowSetUtils.testRowSet();
        }catch (Exception e){
            System.out.println(e);
        }
    }
}
