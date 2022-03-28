import { LightningElement,track } from 'lwc';

export default class TodoApp extends LightningElement {
    @track reactive;
    nonreactive;

    reactiveHandler(event){
        this.reactive = event.target.value;
    }

    nonreactiveHandler(event){
        this.nonreactive = event.target.value;
    }
}