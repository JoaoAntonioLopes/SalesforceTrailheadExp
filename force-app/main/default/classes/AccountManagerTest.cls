@IsTest
private class AccountManagerTest {
    @isTest static void testGetAccount() {
        String recordId = createRecord();
        // Set up a test request
        RestRequest request = new RestRequest();
        request.requestUri =
            'https://resourceful-koala-wiu2xd-dev-ed.my.salesforce.com/Accounts/' + recordId +  '/contacts';
        request.httpMethod = 'GET';
        RestContext.request = request;
        // Call the method to test
        Account thisAccount = AccountManager.getAccount();
        // Verify results
        System.assert(thisAccount != null);
        System.assertEquals('Test Record', thisAccount.Name);
    }

    static Id createRecord(){
        Account accountTest = new Account(Name = 'Test Record');
        insert accountTest;

        Contact contactTest = new Contact(
                                FirstName = 'Juan',
                                LastName = 'Lopos',
                                AccountId = accountTest.Id);
        insert contactTest;
        return accountTest.Id;
    }

}