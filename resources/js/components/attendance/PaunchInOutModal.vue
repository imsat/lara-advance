<template>
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header bg-gradient-info">
                <h5 class="modal-title" id="exampleModalLabel">Punch In Out</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form >
            <div class="modal-body">
                <textarea name="punched_in_note"  placeholder="Punch in note" rows="3" class="form-control"></textarea>
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-sm btn-success" @click.prevent="punchInOut">Punch In</button>
                <button type="button" class="btn btn-sm btn-secondary" data-dismiss="modal">Close</button>
            </div>
            </form>
        </div>
    </div>
</template>

<script>
    export default {
        props: ['user'],
        name: "PaunchInOutModal",
        methods: {
            punchInOut(){
                let route = '';

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
