public class AccountHandler {
    public static Account insertNewAccount(String accName) {  
        Account acc = new Account(Name = accName);
        try {
            insert acc;        
            return acc;
        } catch (DmlException e) {
            System.debug('A DML exception has ocurred:' + e.getMessage());
            return null;
        }       
    }

    public void test(){
        AccountHandler.insertNewAccount('LULA');
    }
}