require('./bootstrap');

window.Vue = require('vue');




Vue.component('vue-navbar', require('./components/Navbar.vue').default);
Vue.component('file-component', require('./components/FileComponent.vue').default);
Vue.component('punch-in-out-modal', require('./components/attendance/PaunchInOutModal').default);



const app = new Vue({
    el: '#app',
    mounted(){
        Echo.channel('userBanned')
            .listen('UserBannedEvent', (e) => {
                console.log(e)
            });
    },
});
