<div id="resultsPanel" class="row hidden">

    <div class="col-sm-12">

        <h3>Results</h3>
        <div class="panel panel-info">
            <ul class="nav nav-pills panel-heading" style="border-bottom: none">
                <li class="active"><a  href="#patient-tab" data-toggle="tab">Patient</a></li>
                <li><a href="#cancer-tab" data-toggle="tab">Episodes</a></li>
            </ul>

            <div class="tab-content panel-body">

                <#include "./resultsTab/patientTab.ftl">
                <#include "./resultsTab/cancerTab.ftl">

            </div>
        </div>
    </div>
</div>
