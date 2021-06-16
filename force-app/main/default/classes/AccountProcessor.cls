public class AccountProcessor {
    @Future
    public static void countContacts(List<Id> accountsId) {

        List<Account> accountsToUpdate = new List<Account>();

        List<Account> accounts = [SELECT Id, Name, (SELECT Id FROM Contacts) FROM Account WHERE Id IN :accountsId];
        
        for (Account acc : accounts) {
            List<Contact> contactList = acc.Contacts;
            acc.Number_Of_Contacts__c = contactList.size(); 
            accountsToUpdate.add(acc);        
        }
        update accountsToUpdate;
    }
}