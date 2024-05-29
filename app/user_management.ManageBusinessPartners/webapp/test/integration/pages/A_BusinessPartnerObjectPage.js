sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'usermanagement.ManageBusinessPartners',
            componentId: 'A_BusinessPartnerObjectPage',
            contextPath: '/A_BusinessPartner'
        },
        CustomPageDefinitions
    );
});