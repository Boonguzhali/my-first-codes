import { LightningElement } from 'lwc';

export default class HiConditionalExample extends LightningElement {

    isVisible=false;
    name;

    handleClick(event){
        this.isVisible=true;
    }

    trackHandler(event){
        this.name = event.target.value;
    }

    get helloMethod(){
        return this.name === "HELLO";
    }
}