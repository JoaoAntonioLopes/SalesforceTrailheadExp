public class AccountTriggerHandler {
    public static void CreateAccounts(List<Account> accountList) {
        List<Account> accs = new List<Account>();
        for (Account a : accountList) {
            if(a.ShippingState != a.BillingState){
                
                a.ShippingState = a.BillingState;
                
               
            }
        }
       
    }
}