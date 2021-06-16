public class ContactAndLeadSearch {
    public static List<List<SObject>> searchContactsAndLeads(String searchParam) {
        List<List<SObject>> searchResult = new List<List<SObject>>();
        searchResult = [FIND :searchParam IN ALL FIELDS 
                        RETURNING Contact(FirstName, LastName), Lead(FirstName, LastName)];

        return searchResult;
    }

}