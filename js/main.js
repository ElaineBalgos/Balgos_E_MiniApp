import {fetchData} from "./components/TheDataMiner.js";
import carsTemplate from "./components/carsTemplate.js";

(() => { 
    let vue_vm = new Vue({
        // link Vue to an element in our HTML
        // el: "#app", el: means element

        // vue instance {{ interpulated / replaced inside the data opbject }}
        data: {
            // message: "Hello from Vue!",
            // anotherMessage: "more text, so simple! much winning",
            // removeAformat: true,
            showDescData: false,
            carsData: []
        },
        // This is the "mounted" lifecycle hook. Vue is done creating and has attached itself to the "app" div on the page
        mounted: function() {
            console.log("vue is mounted, trying a fetch for the initial data");
            // only will alert once / opoup message in UI 
            // alert("Hey There! your vue is ready!");

            // this.professors.push({name: "Jarrod", role:"supermodel prof", nickname: "Zoolander"} )

            fetchData("./includes/index.php")
                .then(data => {
                    data.forEach(cars => this.carsData.push(cars));
                })
                .catch(err => console.error(err));

        },

        // run a method when we change our vue  (update the DOM with Vue)
        updated: function() {
            console.log('Vue just updated the DOM')
        },

        // event handling
        methods: {
            logClicked() {
                console.log("clicked on a list item");
            },

            // clickHeader(){
            //     console.log("clicked on a Header");
            // },

            showCarsData(target) {
                // show cars in carsData array
                console.log('clicked to show data', target, target.name);
                
                // the "this" keyword inside a vue instance REFERS to the Vue instance itself by default

                // toggle the property between true and false using a ternary statement
                this.showCarsData = this.showCarsData ? false : true
                this.currentCarsData = target;
            },

            loadInfo() {
                console.log("loadInfo", this.cars);

            }
        },

        components: {
            "cars-temp": carsTemplate
        }
       
    }).$mount("#app"); // also connects Vue to your wrapper in HTML
})();