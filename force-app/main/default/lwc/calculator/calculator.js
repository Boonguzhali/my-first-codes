import { LightningElement } from 'lwc';

export default class Calculator extends LightningElement {
    firstNumber;
    secondNumber;
    result;

    firstNumberChange(event){
        this.firstNumber = event.target.value;
    }
    secondNumberChange(event){
        this.secondNumber = event.target.value;
    }
    addition(event){
        this.result = parseInt(this.firstNumber)+parseInt(this.secondNumber);
    }
    subtraction(event){
        this.result = parseInt(this.firstNumber)-parseInt(this.secondNumber);
    }
    multiplication(event){
        this.result = parseInt(this.firstNumber)*parseInt(this.secondNumber);
    }
    division(event){
        this.result = parseInt(this.firstNumber)/parseInt(this.secondNumber);
    }
}