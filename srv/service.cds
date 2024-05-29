using { hrServiceDelivery } from '../db/schema.cds';

service hrServiceDeliverySrv {
  @odata.draft.enabled
  entity Ticket as projection on hrServiceDelivery.Ticket;
  @odata.draft.enabled
  entity Employee as projection on hrServiceDelivery.Employee;
  @odata.draft.enabled
  entity HRBusinessPartner as projection on hrServiceDelivery.HRBusinessPartner;
  @odata.draft.enabled
  entity KnowledgeBase as projection on hrServiceDelivery.KnowledgeBase;
  @odata.draft.enabled
  entity Responder as projection on hrServiceDelivery.Responder;
}