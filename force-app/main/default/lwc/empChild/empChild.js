import { LightningElement,api } from 'lwc';

export default class EmpChild extends LightningElement {
    @api empDetail={empName:'abc',empAdd:'abcdefg'};
    
}