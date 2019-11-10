<template>
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header bg-gradient-info">
                <h5 class="modal-title" v-if="!attendance.id">Punch In</h5>
                <h5 class="modal-title" v-else>Punch Out</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form >
            <div class="modal-body">
                <form>
                    <div class="form-group row">
                        <label for="name" class="col-sm-2 col-form-label">Name</label>
                        <div class="col-sm-10 mt-2">
                            <span id="name">{{user.full_name}}</span>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="note" class="col-sm-2 col-form-label">Note</label>
                        <div class="col-sm-10 mt-2">
                            <textarea v-if="!attendance.id" id="note" v-model="form.in_note" placeholder="Punch in note" rows="3" class="form-control"></textarea>
                            <textarea v-else v-model="form.out_note" id="note" placeholder="Punch out note" rows="3" class="form-control"></textarea>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button v-if="!attendance.id" type="submit" class="btn btn-sm btn-success"  @click.prevent="punched(`api/attendance/punch/in/${user.id}`)">Punch In</button>
                <button v-else type="submit" class="btn btn-sm btn-danger"  @click.prevent="punched(`api/attendance/punch/out/${attendance.id}`)">Punch Out</button>
            </div>
            </form>
        </div>
    </div>
</template>

<script>
    export default {
        props: ['user', 'is_punched', 'attendance'],
        name: "PaunchInOutModal",
        data(){
          return {
              form:{
                  in_note: '',
                  out_note: '',
              }
          }
        },
        methods: {
            punched(route){
                axios.post(route, this.form)
                    .then(res => {
                        // console.log(res);
                        $("#punch-in-out").modal("hide");
                        this.$emit('punched')
                    })
                    .catch(err => {

                    })
            }
        }

    }
</script>

<style scoped>

</style>
