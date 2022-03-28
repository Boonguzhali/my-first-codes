import { LightningElement,track } from 'lwc';

export default class Calculator21 extends LightningElement {
    firstNumber;
    secondNumber;
    @track result;
    @track previousResult;
    firstNumberChange(event){
        this.firstNumber = event.target.value;
       
    }
    secondNumberChange(event){
        this.secondNumber = event.target.value;
    }
    addHandler(){
        this.result = parseInt(this.firstNumber)+parseInt(this.secondNumber);
        this.previousResult.push(this.result);
    }
    subHandler(){
        this.result = parseInt(this.firstNumber) - parseInt(this.secondNumber);
    }
    mulHandler(){
        this.result = parseInt(this.firstNumber) * parseInt(this.secondNumber);
    }
    divHandler(){
        this.result = parseInt(this.firstNumber) / parseInt(this.secondNumber);
    }

}