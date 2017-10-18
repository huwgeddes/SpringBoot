<div v-cloak id="datamanagement">


    <div class="row">
        <div  class="col-sm-12">
            <transition name="slide">
                <h1 v-if="!showResults" class="text-center" v-leave="showResults" style="margin-bottom: 25px">Data Managment</h1>
            </transition>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-12">
            <div class="form-group row">
                <label for="patientId" class="sr-only">Patient Id:</label>
                <div class="col-sm-4">
                    <input required class="form-control" type="text" v-model="patientId" placeholder="Patient Id" name="patientId">
                </div>

                <div class="col-sm-2">
                    <button v-bind:disabled="isNotNumeric" type="button" v-on:click="findPatient" class="btn btn-primary btn-block">Search</button>
                </div>

                <div class="col-sm-2">
                    <button v-on:click="createNewPatient" class="btn btn-primary btn-block">Create New</button>
                </div>
            </div>
        </div>
    </div>

    <div class="row" style="margin-top:20px" v-show="showResults">

        <div class="col-sm-12">

            <h3>Results</h3>

            <div class="panel panel-info">
                <ul class="nav nav-pills panel-heading" style="border-bottom: none">
                    <li class="active"><a  href="#patient-tab" data-toggle="tab">Patient</a></li>
                    <li><a href="#cancer-tab" data-toggle="tab">Episodes</a></li>
                </ul>

                <div class="tab-content panel-body">
                    <patient-tab></patient-tab>
                    <cancer-tab></cancer-tab>
                </div>
            </div>

        </div>

    </div>
</div>