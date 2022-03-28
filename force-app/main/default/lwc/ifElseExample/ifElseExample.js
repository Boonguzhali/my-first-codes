import { LightningElement,track } from 'lwc';

export default class IfElseExample extends LightningElement {
    something=true;

    @track name;
    @track age;
    @track salary;
    @track show=true;

    changeName(event){
        this.name = event.target.value;
    }
    changeAge(event){
        this.age = event.target.value;
    }
    changeSalary(event){
        this.salary = event.target.value;
    }
    saveChanger(){
        this.show=false;
    }

}