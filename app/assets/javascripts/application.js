// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

(function($) {

    // Waits DOM to be loaded
    $(document).ready(function() {

        // Sets LavaLamp to navigation menu
        $(".lavaLamp").lavaLamp({  speed: 100 });

        // Initializes jquery.dataTables plugin to tables
        $("table").dataTable( {

            "bJQueryUI": true,
            "bPaginate": false,
            "bLengthChange": false,
            "bFilter": true,
            "bSort": true,
            "bInfo": true,
            "bAutoWidth": true

        });

        // Attach jquery.button to input type button elements
        $( "input[type='button'], input[type='submit'], button, a").button();
        //$("input").button();
    });
}(jQuery));
