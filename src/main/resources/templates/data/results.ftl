<div class="row hidden" style="margin-top:20px" v-show="showResults">

    <h3>Results</h3>

    <div class="col-sm-12">
        <ul class="nav nav-tabs">
            <li class="active"><a  href="#patient-tab" data-toggle="tab">Patient</a></li>
            <li><a href="#cancer-tab" data-toggle="tab">Episodes</a></li>
        </ul>

        <div class="tab-content panel">

            <div class='tab-pane panel-body active' id='patient-tab'>
                <h3>Patient Info</h3>

                <form>
                    <div class="form-group row">
                        <label class="col-sm-2" for="id">Patient Id:</label>
                        <div class="col-sm-4">
                            <input class="form-control" type="text" v-model="patient.id" name="id">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2" for="dateOfBirth">Date of Birth:</label>
                        <div class="col-sm-4">
                            <input class="form-control" type="text" v-model="patient.formattedDateOfBirth" name="dateOfBirth">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2" for="gender">Gender:</label>
                        <div class="col-sm-4">
                            <input class="form-control" type="text" v-model="patient.gender" name="gender">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2" for="cancers">Episodes:</label>
                        <div class="col-sm-4">
                            <select class="form-control" name="cancers">
                                <option v-for="cancer in patient.cancers" v-bind:value="cancer.id">
                                    {{ cancer.cancerType }}
                                </option>
                            </select>
                        </div>
                    </div>
                </form>

            </div>

            <div class='tab-pane panel-body' id='cancer-tab'>
                <h3>Episodes</h3>
                <form>
                    <div class="form-group row">
                        <label class="col-sm-2" for="cancers">Episode:</label>
                        <div class="col-sm-4">
                            <select class="form-control" name="cancers" v-model="selected">
                                <option v-for="cancer in patient.cancers" v-bind:value="cancer">
                                    {{ cancer.cancerType }}</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-sm-2" for="id">Episode Id:</label>
                        <div class="col-sm-4">
                            <input class="form-control" type="text" v-model="selected.id" name="id">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-sm-2" for="cancerType">Episode Type:</label>
                        <div class="col-sm-4">
                            <input class="form-control" type="text" v-model="selected.cancerType" name="cancerType">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-sm-2" for="dateDiagnosed">Date Diagnosed:</label>
                        <div class="col-sm-4">
                            <input class="form-control" type="text" v-model="selected.dateDiagnosed" name="dateDiagnosed">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>