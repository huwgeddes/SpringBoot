define(['jquery'], function($) {
  return {

    getPatient: function(patientId) {
      return $.ajax({
        url: "/patient/findById",
        data: {
          "patientId": patientId
        },
        type: "GET"
      });


    }

  };
});