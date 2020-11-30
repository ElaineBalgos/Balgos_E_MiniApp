export default {
    name: "carsTemplate",

    props: ["carsDataTemplate"],

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
    `<li>
        <a @click.prevent="doSomething" href="" class="remove-prof" >
            <img :src="'img/' + cars.Image" :alt='cars.Name + "Image"'>
        </a>


        <a href="">
            <img class="imgButton" src="img/3doorClassic.png" alt=" 2021 Mini Cooper 3 Door">
        </a>
        <a href="">
            <img class="imgButton" src="img/5doorPremier.png" alt=" 2021 Mini Cooper 5 Door">
        </a>
        <a href="">
            <img class="imgButton" src="img/convertiblePremier+.png" alt=" 2021 Mini Cooper Convertible">
        </a>

    </li>`,
    
    created: function() {
        console.log(`loaded ${this.cars.Name} card`); 
    },

    methods: {
        logClicked() {
            console.log(`fired from ${this.cars.Name}'s card`);
        },

        doSomething() {
            console.log(`try this`);
        }
    }
}