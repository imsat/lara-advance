<template>
    <li class="nav-item dropdown">
        <a class="nav-link btn btn-sm  btn-outline-success" data-toggle="modal" data-target="#add-edit-modal">
            Punch / in
        </a>
    </li>
</template>

<script>
    export default {
        props: ['user'],
        name: "PunchInOutButton",
        created(){
            // console.log(this.user);
            this.getPunchInOut(`/api/attendance/status/${this.user.id}`)
        },
        methods: {
            getPunchInOut(route){
                axios.get(route)
                    .then(res => {
                        console.log(res);
                    })
                    .catch(err => {

                    })
            }
        }
    }
</script>

<style scoped>

</style>
