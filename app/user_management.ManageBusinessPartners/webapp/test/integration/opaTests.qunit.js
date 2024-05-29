sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'usermanagement/ManageBusinessPartners/test/integration/FirstJourney',
		'usermanagement/ManageBusinessPartners/test/integration/pages/A_BusinessPartnerList',
		'usermanagement/ManageBusinessPartners/test/integration/pages/A_BusinessPartnerObjectPage'
    ],
    function(JourneyRunner, opaJourney, A_BusinessPartnerList, A_BusinessPartnerObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('usermanagement/ManageBusinessPartners') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheA_BusinessPartnerList: A_BusinessPartnerList,
					onTheA_BusinessPartnerObjectPage: A_BusinessPartnerObjectPage
                }
            },
            opaJourney.run
        );
    }
);