sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ui5freestyleapp/test/integration/FirstJourney',
		'ui5freestyleapp/test/integration/pages/TicketList',
		'ui5freestyleapp/test/integration/pages/TicketObjectPage'
    ],
    function(JourneyRunner, opaJourney, TicketList, TicketObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ui5freestyleapp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheTicketList: TicketList,
					onTheTicketObjectPage: TicketObjectPage
                }
            },
            opaJourney.run
        );
    }
);