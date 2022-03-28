public class BankExample {
    
    public String bankName ='USA';
    public String accountNumber = 'ABC123';
    public Decimal currentBalance = 10000;
    public Decimal withdrawBalance;
    public Decimal depositAmount;
    public String accountNumber2 = 'CDE234';
    public Decimal currentBalance2 = 15000;
    public Decimal transferAmount;

public BankExample(){
    system.debug('Account number:'+accountNumber);
    system.debug('Current balance:'+currentBalance);
    balancecheck();
}    

public void withdraw(Decimal withdrawBalance){
    system.debug('Current balance before withdraw:' +currentBalance);
    currentBalance= currentBalance - withdrawBalance;
    system.debug('Current balance after withdraw:' +currentBalance);
}

public void deposit(Decimal depositAmount){
    system.debug('Current balance before deposit:'+currentBalance);
    currentBalance = currentBalance + depositAmount;
    system.debug('Current balance after deposit:'+currentBalance);
}

public void transfer(Decimal transferAmount){
    system.debug('Current balance in payeeAccount :'+currentBalance2);
    system.debug('Transfer amount before transaction:'+transferAmount);
    system.debug('Current balance in receiver account:'+currentBalance);
    currentBalance2 = currentBalance2 -transferAmount;
    currentBalance = currentBalance + transferAmount;
    system.debug('Current balance in payee account:'+currentBalance2);
    system.debug('Current balance in receiver account:'+currentBalance);

}

public void balancecheck(){

}

}