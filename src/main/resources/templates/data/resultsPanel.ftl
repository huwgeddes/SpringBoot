<div id="resultsPanel" class="row hidden" style="margin-top:20px">

    <div class="col-sm-12">

        <h3>Results</h3>
        <div class="panel panel-info">
            <ul class="nav nav-pills panel-heading" style="border-bottom: none">
                <li class="active"><a  href="#patient-tab" data-toggle="tab">Patient</a></li>
                <li><a href="#cancer-tab" data-toggle="tab">Episodes</a></li>
            </ul>

            <div class="tab-content panel-body">

                <div class='tab-pane active' id='patient-tab'>

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

                <div class='tab-pane' id='cancer-tab'>
                    <div class="row form-group">
                        <label class="h4 col-sm-offset-3 col-sm-2" for="cancers">Episode:</label>
                        <div class="col-sm-4">
                            <select class="form-control cancer-select" name="cancers">
                                {{#cancers}}
                                <option value="{{id}}">{{cancerType}}</option>
                                {{/cancers}}
                            </select>
                        </div>
                    </div>


                    <form class="cancerForm">
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
                        <button class="btn btn-default" type="reset">Reset</button>
                        <button class="btn btn-primary" type="button">Update</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
