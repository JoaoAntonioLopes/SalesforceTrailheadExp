@isTest
private class AccountTriggerTest {
    @isTest
    private static void AccountTriggerTest() {
        List<Account> testList = new List<Account>();
        for (Integer i = 0; i < 200; i++) {
            Account testAcc = new Account(Name = 'Test ' + i,
                                          BillingState = 'CA',
                                          ShippingState = 'KS');
            testList.add(testAcc);            
        }
        Test.startTest();
        insert testList;
        Test.stopTest();
        List<account> verAccs = [SELECT BillingState, ShippingState FROM Account];
        for (Account verAcc : verAccs) {
            System.assertEquals('CA', verAcc.BillingState);
            System.assertEquals('CA', verAcc.ShippingState);
            
        }
        System.assertEquals(200, verAccs.size());
    }
}