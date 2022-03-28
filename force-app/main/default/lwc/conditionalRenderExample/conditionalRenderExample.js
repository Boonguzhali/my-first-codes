import { LightningElement,track } from 'lwc';

export default class ConditionalRenderExample extends LightningElement {
    @track displayDiv = false;
    @track cityList=['Jax','st johns'];
    showDivHandler(event){
        this.displayDiv=event.target.checked;
    }
}