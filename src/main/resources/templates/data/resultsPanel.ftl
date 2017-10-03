<div id="resultsPanel" class="row hidden" style="margin-top:20px">

    <h3>Results</h3>

    <div class="col-sm-12">
        <ul class="nav nav-tabs">
            <li class="active"><a  href="#patient-tab" data-toggle="tab">Patient</a></li>
            <li><a href="#cancer-tab" data-toggle="tab">Episodes</a></li>
        </ul>

        <div class="tab-content panel">

            <div class='tab-pane panel-body active' id='patient-tab'>
                <h3>Patient Info</h3>

                <form class="patientForm">
                    <div class="form-group row">
                        <label class="col-sm-2" for="id">Patient Id:</label>
                        <div class="col-sm-4">
                            <input class="form-control" type="text" name="id" value="{{id}}">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2" for="dateOfBirth">Date of Birth:</label>
                        <div class="col-sm-4">
                            <input class="form-control" type="text" name="dateOfBirth" value="{{formattedDateOfBirth}}">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2" for="gender">Gender:</label>
                        <div class="col-sm-4">
                            <input class="form-control" type="text" name="gender" value="{{gender}}">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2" for="cancers">Episodes:</label>
                        <div class="col-sm-4">
                            <select class="form-control" name="cancers">
                                {{#cancers}}
                                <option value="{{id}}">{{cancerType}}</option>
                                {{/cancers}}
                            </select>
                        </div>
                    </div>

                    <button class="btn btn-default" type="reset">Reset</button>
                    <button class="btn btn-primary" type="button">Update</button>
                </form>

            </div>

            <div class='tab-pane panel-body' id='cancer-tab'>
                <h3>Episodes</h3>
                <form class="cancerForm">
                    <div class="form-group row">
                        <label class="col-sm-2" for="cancers">Episode:</label>
                        <div class="col-sm-4">
                            <select class="form-control cancer-select" name="cancers">
                                {{#cancers}}
                                <option value="{{id}}">{{cancerType}}</option>
                                {{/cancers}}
                            </select>
                        </div>
                    </div>
                    <div class="cancer-data">
                        <div class="form-group row">
                            <label class="col-sm-2" for="id">Episode Id:</label>
                            <div class="col-sm-4">
                                <input class="form-control" type="text" name="id" value="{{id}}">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-sm-2" for="cancerType">Episode Type:</label>
                            <div class="col-sm-4">
                                <input class="form-control" type="text" name="cancerType" value="{{cancerType}}">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-sm-2" for="dateDiagnosed">Date Diagnosed:</label>
                            <div class="col-sm-4">
                                <input class="form-control" type="text" name="dateDiagnosed" value="{{dateDiagnosed}}">
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>