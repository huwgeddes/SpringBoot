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