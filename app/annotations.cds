using { hrServiceDeliverySrv } from '../srv/service.cds';

annotate hrServiceDeliverySrv.Ticket with {
  employee @Common.ValueList: {
    CollectionPath: 'Employee',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: employee_ID,
        ValueListProperty: 'ID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'employeeID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'name'
      },
    ],
  }
};
annotate hrServiceDeliverySrv.Ticket with {
  hrBusinessPartner @Common.ValueList: {
    CollectionPath: 'HRBusinessPartner',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: hrBusinessPartner_ID,
        ValueListProperty: 'ID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'hRBusinessPartnerID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'name'
      },
    ],
  }
};
annotate hrServiceDeliverySrv.Ticket with @UI.DataPoint #title: {
  Value: title,
  Title: 'Title',
};
annotate hrServiceDeliverySrv.Ticket with @UI.DataPoint #description: {
  Value: description,
  Title: 'Description',
};
annotate hrServiceDeliverySrv.Ticket with @UI.DataPoint #status: {
  Value: status,
  Title: 'Status',
};
annotate hrServiceDeliverySrv.Ticket with @UI.HeaderFacets: [
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#title', ID: 'Title' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#description', ID: 'Description' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#status', ID: 'Status' }
];
annotate hrServiceDeliverySrv.Ticket with @UI.HeaderInfo: {
  TypeName: 'Ticket',
  TypeNamePlural: 'Tickets',
  Title: { Value: ticketID }
};
annotate hrServiceDeliverySrv.Ticket with {
  ID @UI.Hidden
};
annotate hrServiceDeliverySrv.Ticket with @UI.Identification: [{ Value: ticketID }];
annotate hrServiceDeliverySrv.Ticket with {
  ticketID @Common.Label: 'Id';
  title @Common.Label: 'Title';
  description @Common.Label: 'Description';
  status @Common.Label: 'Status';
  priority @Common.Label: 'Priority';
  employee @Common.Label: 'Employee';
  hrBusinessPartner @Common.Label: 'HR Business Partner';
  knowledgeBase @Common.Label: 'Knowledge Bases';
  responder @Common.Label: 'Responders'
};
annotate hrServiceDeliverySrv.Ticket with {
  ID @Common.Text: { $value: ticketID, ![@UI.TextArrangement]: #TextOnly };
  employee @Common.Text: { $value: employee.employeeID, ![@UI.TextArrangement]: #TextOnly };
  hrBusinessPartner @Common.Text: { $value: hrBusinessPartner.hRBusinessPartnerID, ![@UI.TextArrangement]: #TextOnly };
};
annotate hrServiceDeliverySrv.Ticket with @UI.SelectionFields: [
  employee_ID,
  hrBusinessPartner_ID
];
annotate hrServiceDeliverySrv.Ticket with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: ID },
    { $Type: 'UI.DataField', Value: ticketID },
    { $Type: 'UI.DataField', Value: title },
    { $Type: 'UI.DataField', Value: description },
    { $Type: 'UI.DataField', Value: status },
    { $Type: 'UI.DataField', Value: priority },
    { $Type: 'UI.DataField', Label: 'Employee', Value: employee_ID },
    { $Type: 'UI.DataField', Label: 'HR Business Partner', Value: hrBusinessPartner_ID }
];
annotate hrServiceDeliverySrv.Ticket with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: ID },
    { $Type: 'UI.DataField', Value: ticketID },
    { $Type: 'UI.DataField', Value: title },
    { $Type: 'UI.DataField', Value: description },
    { $Type: 'UI.DataField', Value: status },
    { $Type: 'UI.DataField', Value: priority },
    { $Type: 'UI.DataField', Label: 'Employee', Value: employee_ID },
    { $Type: 'UI.DataField', Label: 'HR Business Partner', Value: hrBusinessPartner_ID }
]};
annotate hrServiceDeliverySrv.KnowledgeBase with @UI.LineItem #Ticket_knowledgeBase: [
    { $Type: 'UI.DataField', Value: ID },
    { $Type: 'UI.DataField', Value: knowledgeBaseID },
    { $Type: 'UI.DataField', Value: title }
];
annotate hrServiceDeliverySrv.Responder with @UI.LineItem #Ticket_responder: [
    { $Type: 'UI.DataField', Value: ID },
    { $Type: 'UI.DataField', Value: responderID },
    { $Type: 'UI.DataField', Value: name }
];
annotate hrServiceDeliverySrv.Ticket with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' },
  { $Type: 'UI.ReferenceFacet', ID: 'knowledgeBase', Label: 'Knowledge Bases', Target: 'knowledgeBase/@UI.LineItem#Ticket_knowledgeBase' },
  { $Type: 'UI.ReferenceFacet', ID: 'responder', Label: 'Responders', Target: 'responder/@UI.LineItem#Ticket_responder' }
];
annotate hrServiceDeliverySrv.Employee with @UI.DataPoint #name: {
  Value: name,
  Title: 'Name',
};
annotate hrServiceDeliverySrv.Employee with @UI.HeaderFacets: [
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#name', ID: 'Name' }
];
annotate hrServiceDeliverySrv.Employee with @UI.HeaderInfo: {
  TypeName: 'Employee',
  TypeNamePlural: 'Employees',
  Title: { Value: employeeID }
};
annotate hrServiceDeliverySrv.Employee with {
  ID @UI.Hidden
};
annotate hrServiceDeliverySrv.Employee with @UI.Identification: [{ Value: employeeID }];
annotate hrServiceDeliverySrv.Employee with {
  employeeID @Common.Label: 'Id';
  name @Common.Label: 'Name'
};
annotate hrServiceDeliverySrv.Employee with {
  ID @Common.Text: { $value: employeeID, ![@UI.TextArrangement]: #TextOnly };
};
annotate hrServiceDeliverySrv.Employee with @UI.SelectionFields: [
  employeeID
];
annotate hrServiceDeliverySrv.Employee with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: ID },
    { $Type: 'UI.DataField', Value: employeeID },
    { $Type: 'UI.DataField', Value: name }
];
annotate hrServiceDeliverySrv.Employee with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: ID },
    { $Type: 'UI.DataField', Value: employeeID },
    { $Type: 'UI.DataField', Value: name }
]};
annotate hrServiceDeliverySrv.Employee with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];
annotate hrServiceDeliverySrv.HRBusinessPartner with @UI.DataPoint #name: {
  Value: name,
  Title: 'Name',
};
annotate hrServiceDeliverySrv.HRBusinessPartner with @UI.HeaderFacets: [
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#name', ID: 'Name' }
];
annotate hrServiceDeliverySrv.HRBusinessPartner with @UI.HeaderInfo: {
  TypeName: 'HR Business Partner',
  TypeNamePlural: 'HR Business Partners',
  Title: { Value: hRBusinessPartnerID }
};
annotate hrServiceDeliverySrv.HRBusinessPartner with {
  ID @UI.Hidden
};
annotate hrServiceDeliverySrv.HRBusinessPartner with @UI.Identification: [{ Value: hRBusinessPartnerID }];
annotate hrServiceDeliverySrv.HRBusinessPartner with {
  hRBusinessPartnerID @Common.Label: 'Id';
  name @Common.Label: 'Name'
};
annotate hrServiceDeliverySrv.HRBusinessPartner with {
  ID @Common.Text: { $value: hRBusinessPartnerID, ![@UI.TextArrangement]: #TextOnly };
};
annotate hrServiceDeliverySrv.HRBusinessPartner with @UI.SelectionFields: [
  hRBusinessPartnerID
];
annotate hrServiceDeliverySrv.HRBusinessPartner with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: ID },
    { $Type: 'UI.DataField', Value: hRBusinessPartnerID },
    { $Type: 'UI.DataField', Value: name }
];
annotate hrServiceDeliverySrv.HRBusinessPartner with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: ID },
    { $Type: 'UI.DataField', Value: hRBusinessPartnerID },
    { $Type: 'UI.DataField', Value: name }
]};
annotate hrServiceDeliverySrv.HRBusinessPartner with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];
annotate hrServiceDeliverySrv.KnowledgeBase with {
  ticket @Common.ValueList: {
    CollectionPath: 'Ticket',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: ticket_ID,
        ValueListProperty: 'ID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'ticketID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'title'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'description'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'status'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'priority'
      },
    ],
  }
};
annotate hrServiceDeliverySrv.KnowledgeBase with @UI.DataPoint #title: {
  Value: title,
  Title: 'Title',
};
annotate hrServiceDeliverySrv.KnowledgeBase with @UI.HeaderFacets: [
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#title', ID: 'Title' }
];
annotate hrServiceDeliverySrv.KnowledgeBase with @UI.HeaderInfo: {
  TypeName: 'Knowledge Base',
  TypeNamePlural: 'Knowledge Bases',
  Title: { Value: knowledgeBaseID }
};
annotate hrServiceDeliverySrv.KnowledgeBase with {
  ID @UI.Hidden
};
annotate hrServiceDeliverySrv.KnowledgeBase with @UI.Identification: [{ Value: knowledgeBaseID }];
annotate hrServiceDeliverySrv.KnowledgeBase with {
  knowledgeBaseID @Common.Label: 'Id';
  title @Common.Label: 'Title';
  ticket @Common.Label: 'Ticket'
};
annotate hrServiceDeliverySrv.KnowledgeBase with {
  ID @Common.Text: { $value: knowledgeBaseID, ![@UI.TextArrangement]: #TextOnly };
  ticket @Common.Text: { $value: ticket.ticketID, ![@UI.TextArrangement]: #TextOnly };
};
annotate hrServiceDeliverySrv.KnowledgeBase with @UI.SelectionFields: [
  ticket_ID
];
annotate hrServiceDeliverySrv.KnowledgeBase with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: ID },
    { $Type: 'UI.DataField', Value: knowledgeBaseID },
    { $Type: 'UI.DataField', Value: title },
    { $Type: 'UI.DataField', Label: 'Ticket', Value: ticket_ID }
];
annotate hrServiceDeliverySrv.KnowledgeBase with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: ID },
    { $Type: 'UI.DataField', Value: knowledgeBaseID },
    { $Type: 'UI.DataField', Value: title },
    { $Type: 'UI.DataField', Label: 'Ticket', Value: ticket_ID }
]};
annotate hrServiceDeliverySrv.KnowledgeBase with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];
annotate hrServiceDeliverySrv.Responder with {
  ticket @Common.ValueList: {
    CollectionPath: 'Ticket',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: ticket_ID,
        ValueListProperty: 'ID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'ticketID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'title'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'description'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'status'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'priority'
      },
    ],
  }
};
annotate hrServiceDeliverySrv.Responder with @UI.DataPoint #name: {
  Value: name,
  Title: 'Name',
};
annotate hrServiceDeliverySrv.Responder with @UI.HeaderFacets: [
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#name', ID: 'Name' }
];
annotate hrServiceDeliverySrv.Responder with @UI.HeaderInfo: {
  TypeName: 'Responder',
  TypeNamePlural: 'Responders',
  Title: { Value: responderID }
};
annotate hrServiceDeliverySrv.Responder with {
  ID @UI.Hidden
};
annotate hrServiceDeliverySrv.Responder with @UI.Identification: [{ Value: responderID }];
annotate hrServiceDeliverySrv.Responder with {
  responderID @Common.Label: 'Id';
  name @Common.Label: 'Name';
  ticket @Common.Label: 'Ticket'
};
annotate hrServiceDeliverySrv.Responder with {
  ID @Common.Text: { $value: responderID, ![@UI.TextArrangement]: #TextOnly };
  ticket @Common.Text: { $value: ticket.ticketID, ![@UI.TextArrangement]: #TextOnly };
};
annotate hrServiceDeliverySrv.Responder with @UI.SelectionFields: [
  ticket_ID
];
annotate hrServiceDeliverySrv.Responder with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: ID },
    { $Type: 'UI.DataField', Value: responderID },
    { $Type: 'UI.DataField', Value: name },
    { $Type: 'UI.DataField', Label: 'Ticket', Value: ticket_ID }
];
annotate hrServiceDeliverySrv.Responder with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: ID },
    { $Type: 'UI.DataField', Value: responderID },
    { $Type: 'UI.DataField', Value: name },
    { $Type: 'UI.DataField', Label: 'Ticket', Value: ticket_ID }
]};
annotate hrServiceDeliverySrv.Responder with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];