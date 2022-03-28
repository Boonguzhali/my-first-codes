import { LightningElement,track } from 'lwc';

export default class ShapeCalculator extends LightningElement {
    @track outputCalculated;
    side;
    length;
    width;
    d1;
     d2;

    sideChanger(event){
        this.side=event.target.value;
    }
    lengthChanger(event){
        this.length=event.target.value;
    }
    widthChanger(event){
        this.width=event.target.value;
    }
    d1Changer(event){
        this.d1=event.target.value;
    }
    d2Changer(event){
        this.d2=event.target.value;
    }

    squareHandler(){
        const s = parseInt(this.side);
        this.outputCalculated = s*s;
    }
    rectangleHander(){
        this.outputCalculated=this.length * this.width;
    }
    rhombusHandler(){
        this.outputCalculated=(this.d1*this.d2) /2;
    }
}