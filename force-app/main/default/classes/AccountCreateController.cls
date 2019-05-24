public class AccountCreateController {
	@AuraEnabled
    public static String createAccount1(String accName) {
        Account a = new Account(Name = accName);
        insert a;
        System.debug('a.Id : '+a.Id);
        return String.valueOf(a.Id);
    }
}