@isTest
private class OrderEventTriggerTest {
    @isTest
    private static void OrderEventTriggerTest() {
        Order_Event__e orderEvent = new Order_Event__e(
                                    Has_Shipped__c = true,
                                    Order_Number__c = '555444');
        Test.startTest();
        Database.SaveResult sr = Eventbus.publish(orderEvent);
        Test.stopTest();
        System.assertEquals(true, sr.isSuccess());
        List<Task> tasks = [SELECT Id FROM Task];
        System.assertEquals(1, tasks.size());
    }
}