import { LightningElement,track } from 'lwc';

export default class BmiCalculator extends LightningElement {
    @track cardTitle='BMI calc';

    onClickHandler(){
        this.cardTitle='value changed';
        console.log('value:', this.cardTitle);
    }
}