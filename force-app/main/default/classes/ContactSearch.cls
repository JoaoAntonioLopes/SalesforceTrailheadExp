public class ContactSearch {
    public static Contact[] searchForContacts(String lastName, String mailCode) {
       Contact[] contatos = [SELECT Name FROM Contact WHERE LastName =: lastName AND MailingPostalCode =: mailCode];
       return contatos;
    }

    public void test(){
       System.debug(ContactSearch.searchForContacts('Black', ''));
    }
}