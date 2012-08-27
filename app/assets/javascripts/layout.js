/**
 * Created with JetBrains RubyMine.
 * User: antti
 * Date: 8/26/12
 * Time: 6:56 PM
 * To change this template use File | Settings | File Templates.
 */
(function($) {

    // Waits DOM to be loaded
    $(document).ready(function() {

        // Sets LavaLamp to navigation menu
        $(".lavaLamp").lavaLamp({  speed: 100 });

        // Initializes jquery.datatables plugin to tables
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
