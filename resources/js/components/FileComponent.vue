<template>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">

                    <div class="card-header">Laravel Vue JS Image Upload</div>
                    <div class="card-body">
                        <div v-if="success != ''" class="alert alert-success" role="alert">
                            {{success}}
                        </div>
                        <form @submit="formSubmit" enctype="multipart/form-data">

                            <label class="my-2">Files:</label>
                            <input type="file" class="form-control" v-on:change="onFileChange">
                            <button class="btn btn-success my-5">Submit</button>

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        data() {

            return {
                file: '',

                success: ''

            };

        },

        methods: {

            onFileChange(e){

                console.log(e.target.files[0]);

                this.file = e.target.files[0];

            },

            formSubmit(e) {

                e.preventDefault();

                let currentObj = this;



                const config = {

                    headers: { 'content-type': 'multipart/form-data' }

                }



                let formData = new FormData();

                formData.append('file', this.file);



                axios.post('/file', formData, config)

                    .then(function (response) {
                        currentObj.success = response.data.success;

                    })

                    .catch(function (error) {

                        currentObj.output = error;

                    });

            }

        }
    }
</script>
