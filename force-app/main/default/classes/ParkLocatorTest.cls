@isTest
private class ParkLocatorTest {
    
    @isTest static void ParkLocatorTest() {

        // This causes a fake response to be generated
        Test.setMock(WebServiceMock.class, new ParkServiceMock());
        // Call the method that invokes a callout
        String country = 'United States';
        List<String> parks = new List<String>();
        parks.add('Yosemite');
        parks.add('Yellowstone');
        parks.add('Another Park');
        List<String> result = ParkLocator.country(country);
         // Verify that a fake result is returned
         System.assertEquals(parks, result); 
    }
}

