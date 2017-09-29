<div class="row">
    <h3 class="">Data Management</h3>

    <form>
        <div class="form-group">
            <label for="patientId" class="sr-only">Patient Id:</label>
            <div class="col-sm-4">
                <input required class="form-control" type="text" v-model="patientId" placeholder="Patient Id" name="patientId">
            </div>
        </div>
        <div class="col-sm-2">
            <button type="button" class="btn btn-primary btn-block data-search">Search</button>
        </div>
    </form>

    <div class="col-sm-2">
        <button class="btn btn-primary btn-block">Create New</button>
    </div>

</div>