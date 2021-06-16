public class NewCaseListController {
    public List<Case> getNewCases() {
        final String status = 'New';
        final String q = 'SELECT Id, CaseNumber FROM Case WHERE Status = :Status';   
        List<Case> newCases = Database.query(q);
        return newCases;
    }
}