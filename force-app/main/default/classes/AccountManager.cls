@RestResource(urlMapping = '/Accounts/*/contacts')
global with sharing class AccountManager {
   
    @HttpGet
    global static Account getAccount() {
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        String accountId = req.requestURI.substringBetween('Accounts/', '/contacts');
        Account result = [SELECT Id, Name, (SELECT Id, Name FROM Account.Contacts) FROM Account WHERE Id = : accountId];
        return result;
    }
}
