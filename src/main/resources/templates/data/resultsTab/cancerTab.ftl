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