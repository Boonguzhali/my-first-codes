import { LightningElement, track } from 'lwc';

export default class HiWorld extends LightningElement {
   fullName = "Zero to hero";
    title = "aura";

    changeHandler(event){
        this.title = event.target.value;
    }

    trackHandler(event){
        this.address.city = event.target.value;
        // this.address = {...this.address, "city":event.target.value}
    }

    @track address = {
        city:'JAX',
        pincode:32259,
        country:'USA'
    }

    users = ["abc","def","ghi"];
    num1 = 10;
    num2 = 20;

    get firstName(){
        return this.users[0];
    }

    get multiply(){
        return this.num1*this.num2;
    }

}