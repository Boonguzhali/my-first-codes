import { LightningElement, track } from 'lwc';

export default class FirstExample extends LightningElement {
    @track greeting="Everyone, welcome to my page";

    changeHandler(event){
        this.greeting = event.target.value;
    }

}