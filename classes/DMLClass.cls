public class DMLClass {
    List<Account> acct = new List<Account>();
    public DMLClass(){
        List<Account> acc = [Select Id,Name from Account where Name = 'Bhavana NTR'];
        Account acc1 = [Select Id,Name from Account where Name = 'Manisha'];
        for(Account acco : acc){
            acco.Name=acco.Name+acc1.Name;
            acct.add(acco);        
            
        }
        update acct;
    }
    public void print(){
        System.debug('DML Class');
    }

}