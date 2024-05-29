using { user_managementSrv } from '../srv/service.cds';

annotate user_managementSrv.Employees with @UI.HeaderInfo: { TypeName: 'Employee', TypeNamePlural: 'Employees', Title: { Value: employeesID } };
annotate user_managementSrv.Employees with {
  ID @UI.Hidden @Common.Text: { $value: employeesID, ![@UI.TextArrangement]: #TextOnly }
};
annotate user_managementSrv.Employees with @UI.Identification: [{ Value: employeesID }];
annotate user_managementSrv.Employees with @UI.DataPoint #firstName: {
  Value: firstName,
  Title: 'First Name',
};
annotate user_managementSrv.Employees with @UI.DataPoint #lastName: {
  Value: lastName,
  Title: 'Last Name',
};
annotate user_managementSrv.Employees with @UI.DataPoint #hireDate: {
  Value: hireDate,
  Title: 'Hire Date',
};
annotate user_managementSrv.Employees with {
  employeesID @title: 'ID';
  firstName @title: 'First Name';
  lastName @title: 'Last Name';
  email @title: 'Email';
  phoneNumber @title: 'Phone Number';
  department @title: 'Department';
  position @title: 'Position';
  salary @title: 'Salary';
  hireDate @title: 'Hire Date'
};

annotate user_managementSrv.Employees with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: employeesID },
    { $Type: 'UI.DataField', Value: firstName },
    { $Type: 'UI.DataField', Value: lastName },
    { $Type: 'UI.DataField', Value: email },
    { $Type: 'UI.DataField', Value: phoneNumber },
    { $Type: 'UI.DataField', Value: department },
    { $Type: 'UI.DataField', Value: position },
    { $Type: 'UI.DataField', Value: salary },
    { $Type: 'UI.DataField', Value: hireDate }
];

annotate user_managementSrv.Employees with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: employeesID },
    { $Type: 'UI.DataField', Value: firstName },
    { $Type: 'UI.DataField', Value: lastName },
    { $Type: 'UI.DataField', Value: email },
    { $Type: 'UI.DataField', Value: phoneNumber },
    { $Type: 'UI.DataField', Value: department },
    { $Type: 'UI.DataField', Value: position },
    { $Type: 'UI.DataField', Value: salary },
    { $Type: 'UI.DataField', Value: hireDate }
  ]
};

annotate user_managementSrv.Employees with @UI.HeaderFacets: [
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#firstName' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#lastName' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#hireDate' }
];

annotate user_managementSrv.Employees with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate user_managementSrv.Employees with @UI.SelectionFields: [
  employeesID
];

