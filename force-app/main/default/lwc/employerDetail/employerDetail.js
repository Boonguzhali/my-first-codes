import { LightningElement ,track} from 'lwc';

export default class EmployerDetail extends LightningElement {
    @track name;
    @track age;
    @track salary;

    changeHandlerName(event){
        this.name = event.target.value;
    }

    changeHandlerAge(event){
        this.age = event.target.value;
    }

    changeHandlerSalary(event){
        this.salary = event.target.value;
    }

}