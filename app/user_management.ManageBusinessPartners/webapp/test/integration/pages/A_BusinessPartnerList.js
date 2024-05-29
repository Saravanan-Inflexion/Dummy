sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'usermanagement.ManageBusinessPartners',
            componentId: 'A_BusinessPartnerList',
            contextPath: '/A_BusinessPartner'
        },
        CustomPageDefinitions
    );
});