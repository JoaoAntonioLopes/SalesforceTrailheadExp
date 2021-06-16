public class RandomContactFactory {
    
    public static List<Contact> generateRandomContacts(Integer numberOfContacts, String lastName) {
        List<Contact> conts = new List<Contact>();

        for (Integer i = 0; i < numberOfContacts; i++) {
            Contact c = new Contact(FirstName = 'Subject' + i,
                                    LastName = lastName);
            conts.add(c);           
        }   
        return conts;
    }
}