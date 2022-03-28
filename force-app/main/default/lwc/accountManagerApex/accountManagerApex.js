import { LightningElement,track } from 'lwc';
import getAllAccount from '@salesforce/apex/accountManager.getAccount'

export default class AccountManagerApex extends LightningElement {
    
@track numberOfRecords;

    get responseReceived(){
        if(this.accounts){
            return true;
        }
        return false;
    }

    numOfAccChangeHandler(event){
        this.numberOfRecords = event.target.value;
    }

    getAccounts(event){
        getAccount({numberOfRecords:this.numberOfRecords}).then(response =>{
            this.accounts = response;
        }).catch(error =>{
            console.error('error in getting the accounts', error.body.message);
        })
    }
}