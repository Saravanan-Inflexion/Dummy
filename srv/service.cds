using { BusinessPartnerA2X } from './external/BusinessPartnerA2X.cds';

using { user_management as my } from '../db/schema.cds';

@path : '/service/user_management'
service user_managementSrv
{
    annotate A_BusinessPartner with @restrict :
    [
        { grant : [ '*' ], to : [ 'any' ] }
    ];

    entity A_BusinessPartner as
        projection on BusinessPartnerA2X.A_BusinessPartner;
}

annotate user_managementSrv with @requires :
[
    'authenticated-user',
    'any'
];
