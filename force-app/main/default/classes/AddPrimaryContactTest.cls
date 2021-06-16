@Istest
public class AddPrimaryContactTest {

    static testmethod void testQueuable() {  
        List<Account> testAccounts = new List<Account>();
          for (Integer i = 0; i < 50; i++) {
              testAccounts.add(new Account(Name = 'Account' + i, BillingState = 'CA'));
          }
          for (Integer i = 0; i < 50; i++) {
              testAccounts.add(new Account(Name = 'Account' + i, BillingState = 'NY'));
          }
          insert testAccounts;
          Contact testContact = new Contact (FirstName = 'John', LastName = 'Doe');
          insert testContact;
  
          AddPrimaryContact addIt = new AddPrimaryContact(testContact, 'CA');
          // startTest/stopTest block to force async processes to run
          Test.startTest();
          System.enqueueJob(addIt);
          Test.stopTest();
          // Validate the job ran. Check if record have correct parentId now
          System.assertEquals(50, [SELECT  count() FROM Contact 
                                WHERE accountId in (SELECT Id FROM Account WHERE BillingState = 'CA')]);
      
    }
}