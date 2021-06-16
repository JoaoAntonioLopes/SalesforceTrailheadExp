@isTest
private class AccountProcessorTest {
    @isTest
    private static void AccountProcessorTest() {
        Account newAccount = new Account(Name = 'Test');
        insert newAccount;

        Contact newContact1 = new Contact(FirstName = 'Ricardo',
                                          LastName = 'Filho',
                                          AccountId = newAccount.Id);
        insert newContact1;

        Contact newContact2 = new Contact(FirstName = 'Henrique',
                                          LastName = 'Sabia',
                                          AccountId = newAccount.Id);
        insert newContact2;
        
        List<Id> accountIds = new List<Id>();
        accountIds.add(newAccount.Id);
        Test.startTest();
        AccountProcessor.countContacts(accountIds);
        Test.stopTest();
    }
}