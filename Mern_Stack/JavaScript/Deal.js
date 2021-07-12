class Card{
    constructor(name, cost){
        this.name=name;
        this.cost=cost;
    }
}

class Unit extends Card{
    constructor(name, cost, power, res){
        super(name, cost);
        this.power=power;
        this.res=res;
    }

    attack(target){
        target.res-=this.power;
    }
}

class effect extends Card{
    constructor(name, cost, stat, amount){
        super(name, cost);
        this.stat=stat;
        this.amount=amount;
        if(amount<0){
            this.text="reduce target's ${stat} by ${-1*amount}";
        } else{
            this.text="increase target's "+stat+" by "+(Math.abs(amount));
        }
    }

    play( target ) {
        if( target instanceof Unit ) {
        		if(this.stat == "power"){
            target.power+=this.amount;
            } else{
            target.res+=this.amount;
            }
        } else {
            throw new Error( "Target must be a unit!" );
        }
    }
}
let RedBeltNinja = new Unit("Red Belt Ninja", 3, 3, 4);
let HardAlgorithm = new effect("Hard Algorithm", 2, "resilience", 3);
HardAlgorithm.play(RedBeltNinja);
let BlackBeltNinja = new Unit("Black Belt Ninja", 4, 5, 4);
let UnhandledPromiseRejection = new effect("Unhandled Promise Rejection", 1, "resilience", -2);
UnhandledPromiseRejection.play(RedBeltNinja);
let PairProgramming = new effect("Pair Programming", 3, "power", 2);
PairProgramming.play(RedBeltNinja);
RedBeltNinja.attack(BlackBeltNinja);
console.log(BlackBeltNinja);