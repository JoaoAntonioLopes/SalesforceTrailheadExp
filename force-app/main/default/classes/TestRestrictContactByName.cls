@isTest
private class TestRestrictContactByName {
    
    @isTest static void lastNameTestByContactInsert() {
        Contact cont = new Contact(LastName = 'INVALIDNAME');

        Test.startTest();
        Database.UpsertResult result = Database.upsert(cont);
        Test.stopTest();

        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        System.assertEquals('The Last Name INVALIDLASTNAME is not allowed for DML', result.getErrors()[0].getMessage());
    }
}