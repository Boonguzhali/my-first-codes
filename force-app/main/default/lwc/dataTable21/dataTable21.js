import { LightningElement,wire,track } from 'lwc';
import getAccountRecords from '@salesforce/apex/AccountTable21.getAccountRecords';
import getContacts from '@salesforce/apex/AccountTable21.getContacts';

export default class DataTable21 extends LightningElement {
    accountObject={}
    checkValue = true;
    accountData;
    contactData;
    @track accNameFromParent;
    @wire(getAccountRecords) accDataFromWire;

    actions=[
        {label:'Get Contacts', name:'get_contacts'},
        {label:'Delete', name:'delete'}
    ];

    columns=[
        {label:'Id',fieldName:'Id'},
        {label:'Name',fieldName:'Name'},
        {label:'Phone',fieldName:'Phone',type:'phone'},
        {label:'Email',fieldName:'Email',type:'email'},
        {
            type:'action',
            typeAttributes:{rowActions:this.actions},
        },
    ];
    contactcolumns = [
        { label: 'Id', fieldName: 'Id' },
        { label: 'FirstName', fieldName: 'FirstName' },
        { label: 'LastName', fieldName: 'LastName' },
        { label: 'Phone', fieldName: 'Phone', type: 'phone' },
        { label: 'Email', fieldName: 'Email', type: 'email'},
    ];
    connectedCallback(){
        
    }
    handleRowAction(event) {
        const actionName = event.detail.action.name;
        const row = event.detail.row;
        switch (actionName) {
            case 'delete':
                //this.deleteRow(row);
                break;
            case 'get_contacts':
                this.accNameFromParent = row.Name;
                this.showRowDetails(row);
                break;
            default:
        }
    }
    
    showRowDetails(row){
        getContacts({accid : row.Id})
        .then(result => {
            this.contactdata = result;
           
        })
        .catch(error => {
            console.error('** error ** \n ',error);
        });
    }

}