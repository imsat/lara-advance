<template>
  <div>
      <!-- Navbar -->
      <nav class="main-header navbar navbar-expand navbar-white navbar-light border-bottom">
          <!-- Left navbar links -->
          <ul class="navbar-nav">
              <li class="nav-item">
                  <a class="nav-link" data-widget="pushmenu" href="#"><i class="fas fa-bars"></i></a>
              </li>
          </ul>

          <!-- Right navbar links -->
          <ul class="navbar-nav ml-auto">
              <li class="nav-item dropdown">
                  <i v-if="is_loading" class="fa fa-spinner fa-spin text-danger mt-2 mr-3"></i>
                  <a v-else class="nav-link btn btn-sm  btn-outline-success" :class="{'btn-outline-danger': attendance.id}" data-toggle="modal" data-target="#punch-in-out">
                      <span v-if="!attendance.id">Punch in</span>
                      <span v-else>Punch Out</span>
                  </a>
              </li>
              <li class="nav-item dropdown">
                  <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <span v-if="locale == 'bn'">
                        <img :src="'flags/bd.svg'" alt="" class="" style="max-width: 30%"> Bangla
                    </span>
                      <span v-else>
                        <img :src="'flags/us.svg'" alt="" class="" style="max-width: 30%"> English
                    </span>
                      <span class="caret"></span>
                  </a>

                  <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                      <a class="dropdown-item" @click.prevent="setLocale('en')">
                          <img :src="'flags/us.svg'" alt="" class="img-thumbnail" style="max-width: 30%"> English
                      </a>
                      <a class="dropdown-item" @click.prevent="setLocale('bn')">
                          <img :src="'flags/bd.svg'" alt="" class="img-thumbnail" style="max-width: 30%"> Bangla
                      </a>
                  </div>
              </li>

              <li class="nav-item dropdown">
                  <a class="nav-link" data-toggle="dropdown" href="#">
                      <i class="far fa-comments"></i>
                      <span class="badge badge-danger navbar-badge">3</span>
                  </a>
                  <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                      <a href="#" class="dropdown-item">
                          <!-- Message Start -->
                          <div class="media">
                              <img :src="'/admin-lte-3/dist/img/user1-128x128.jpg'" alt="User Avatar" class="img-size-50 mr-3 img-circle">
                              <div class="media-body">
                                  <h3 class="dropdown-item-title">
                                      Brad Diesel
                                      <span class="float-right text-sm text-danger"><i class="fas fa-star"></i></span>
                                  </h3>
                                  <p class="text-sm">Call me whenever you can...</p>
                                  <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
                              </div>
                          </div>
                          <!-- Message End -->
                      </a>
                      <div class="dropdown-divider"></div>
                      <a href="#" class="dropdown-item">
                          <!-- Message Start -->
                          <div class="media">
                              <img :src="'admin-lte-3/dist/img/user8-128x128.jpg'" alt="User Avatar" class="img-size-50 img-circle mr-3">
                              <div class="media-body">
                                  <h3 class="dropdown-item-title">
                                      John Pierce
                                      <span class="float-right text-sm text-muted"><i class="fas fa-star"></i></span>
                                  </h3>
                                  <p class="text-sm">I got your message bro</p>
                                  <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
                              </div>
                          </div>
                          <!-- Message End -->
                      </a>
                      <div class="dropdown-divider"></div>
                      <a href="#" class="dropdown-item">
                          <!-- Message Start -->
                          <div class="media">
                              <img :src="'admin-lte-3/dist/img/user3-128x128.jpg'" alt="User Avatar" class="img-size-50 img-circle mr-3">
                              <div class="media-body">
                                  <h3 class="dropdown-item-title">
                                      Nora Silvester
                                      <span class="float-right text-sm text-warning"><i class="fas fa-star"></i></span>
                                  </h3>
                                  <p class="text-sm">The subject goes here</p>
                                  <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
                              </div>
                          </div>
                          <!-- Message End -->
                      </a>
                      <div class="dropdown-divider"></div>
                      <a href="#" class="dropdown-item dropdown-footer">See All Messages</a>
                  </div>
              </li>
              <!-- Notifications Dropdown Menu -->
              <li class="nav-item dropdown">
                  <a class="nav-link" data-toggle="dropdown" href="#">
                      <i class="far fa-bell"></i>
                      <span class="badge badge-warning navbar-badge">15</span>
                  </a>
                  <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                      <span class="dropdown-header">15 Notifications</span>
                      <div class="dropdown-divider"></div>
                      <a href="#" class="dropdown-item">
                          <i class="fas fa-envelope mr-2"></i> 4 new messages
                          <span class="float-right text-muted text-sm">3 mins</span>
                      </a>
                      <div class="dropdown-divider"></div>
                      <a href="#" class="dropdown-item">
                          <i class="fas fa-users mr-2"></i> 8 friend requests
                          <span class="float-right text-muted text-sm">12 hours</span>
                      </a>
                      <div class="dropdown-divider"></div>
                      <a href="#" class="dropdown-item">
                          <i class="fas fa-file mr-2"></i> 3 new reports
                          <span class="float-right text-muted text-sm">2 days</span>
                      </a>
                      <div class="dropdown-divider"></div>
                      <a href="#" class="dropdown-item dropdown-footer">See All Notifications</a>
                  </div>
              </li>
              <li class="nav-item dropdown">
                  <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      {{ user.full_name }} <span class="caret"></span>
                  </a>

                  <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                      <a class="dropdown-item" href="#">
                          <!--{{ @lang('home.logout')}}-->
                          Logout
                      </a>
                  </div>
              </li>
          </ul>
      </nav>

      <div class="modal fade" id="punch-in-out" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
          <punch-in-out-modal :user="user"  :attendance="attendance" @punched="punched"></punch-in-out-modal>
      </div>
      <!-- /.navbar -->
  </div>

</template>

<script>
    export default {
        props: ['user', 'locale'],
        name: "Navbar",
        data(){
            return {
                is_loading: true,
                attendance: {}
            }
        },
        created(){
            this.getPunchInOut(`/api/attendance/status/${this.user.id}`)
        },
        methods: {
            setLocale(loc){
                axios.get(`locale/${loc}`)
                    .then(res => {
                        location.reload();
                    })
                    .catch(err => {
                    })
            },
            punched(){
               this.getPunchInOut(`/api/attendance/status/${this.user.id}`);
            },
            getPunchInOut(route){
                this.is_loading = true;
                axios.get(route)
                    .then(res => {
                        console.log(res);
                        this.is_loading = false;
                        this.attendance = res.data;
                    })
                    .catch(err => {
                        this.is_loading = false;
                    })
            }
        }
    }
</script>

<style scoped>

</style>
