public class AccountUtils {
    
    public static List<Account> accountsByState(String stateString) {
            List<Account> AccountIdList = new List<Account>([SELECT Id, Name FROM Account WHERE BillingState = :stateString]);

            return AccountIdList;
    }
    
}