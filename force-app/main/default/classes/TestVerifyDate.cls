@isTest
private class TestVerifyDate {
    @isTest static void checks30Range() {
        Date date1 = Date.newInstance(2020, 03, 17); 
        Date date2 = Date.newInstance(2020, 04, 10);
        Date checks = VerifyDate.CheckDates(date1, date2);
        System.assertEquals(date2, checks);
    }
   
    @isTest static void checksEndSetter() {
        Date date1 = Date.newInstance(2020, 03, 17); 
        Date date2 = Date.newInstance(2020, 04, 17);
        Date checks = VerifyDate.CheckDates(date1, date2);
        System.assertEquals(date1.addDays(14), checks);
    }
}