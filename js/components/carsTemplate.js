export default {
    name: "carsTemplate",

    props: ["cars"],

    // the data needs to be function inside a components
    data: function() {
        return {
        Name: this.cars.Name,
        Description: this.cars.Description,
        Included: this.cars.Included,
        Price: this.cars.Price
        }
    },
    
    template: 
    `<a href="">
    <img class="imgButton" :src='"img/"+cars.Image' alt=" 2021 Mini Cooper" v-on:click="logClicked">
    </a>`,
    
    created: function() {
        console.log(`loaded ${this.cars.Name} card`); 
    },

    methods: {
        logClicked() {
            console.log(`fired from ${this.cars.Name}'s card`);
            this.$emit("loadminiData", this.cars)
        },

        doSomething() {
            console.log(`try this`);
        }
    }
}