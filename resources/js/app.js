require('./bootstrap');

window.Vue = require('vue');



Vue.component('file-component', require('./components/FileComponent.vue').default);
Vue.component('punch-in-out-button', require('./components/attendance/PunchInOutButton').default);
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
