namespace hrServiceDelivery;

entity Ticket {
  key ID: UUID;
  ticketID: String(50) @assert.unique @mandatory;
  title: String(50);
  description: String;
  status: String(50);
  priority: String(50);
  employee: Association to Employee;
  hrBusinessPartner: Association to HRBusinessPartner;
  knowledgeBase: Association to many KnowledgeBase on knowledgeBase.ticket = $self;
  responder: Association to many Responder on responder.ticket = $self;
}

entity Employee {
  key ID: UUID;
  employeeID: String(50) @assert.unique @mandatory;
  name: String(50);
}

entity HRBusinessPartner {
  key ID: UUID;
  hRBusinessPartnerID: String(50) @assert.unique @mandatory;
  name: String(50);
}

entity KnowledgeBase {
  key ID: UUID;
  knowledgeBaseID: String(50) @assert.unique @mandatory;
  title: String(50);
  ticket: Association to Ticket;
}

entity Responder {
  key ID: UUID;
  responderID: String(50) @assert.unique @mandatory;
  name: String(50);
  ticket: Association to Ticket;
}
