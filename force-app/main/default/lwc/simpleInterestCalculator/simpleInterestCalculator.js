import { LightningElement,track } from 'lwc';

export default class SimpleInterestCalculator extends LightningElement {
    @track calculatedOutput;
    principal;
    years;
    interest;

    principalChange(event){
        this.principal=event.target.value;
    }
    yearsChange(event){
        this.years = event.target.value;
    }
    interestChange(event){
        this.interest = event.target.value;
    }
    calculateHandler(){
        this.calculatedOutput = 'Simple interest is ' +(this.principal*this.years*this.interest)/100;
    }
}