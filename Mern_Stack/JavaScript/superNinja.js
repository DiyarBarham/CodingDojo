class ninja{
    constructor(name, health, strength, speed){
        this.name=name;
        this.health=health;
        this.speed=speed;
        this.strength=strength;
    }

    sayName(){
        console.log(this.name);
    }

    showStats(){
        console.log(this.name + " " + this.health +" " +this.speed + " " +this.strength);
    }

    drinkSake(){
       this.health +=10;
    }
}

class sensei extends ninja{
    constructor(){
        super("sensei", 200, 10, 10);
        this.wisdom=10;
    }
    speakWisdom(){
        super.drinkSake();
        console.log("wise message "+this.wisdom);
    }
}