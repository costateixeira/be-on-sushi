Instance:   pia-001-v0
InstanceOf: Appointment
Title: "Pia appointment 1"
* id = "pia-001-v0"
* status = #proposed
* serviceCategory.coding.code = #7
* serviceType.coding.code = #59
* description = "1st appointment to plan diabetes care."
//* start = "2019-11-12T09:00:00Z" 
//* end = "2019-11-12T10:00:00Z" 
* participant[0].type.coding.code = #PAT
// HL7:
// Participant.type does not allow patient?
* participant[0].required = #required
* participant[0].status = #needs-action
* participant[1].type.coding.code = #PPRF
* participant[1].actor = Reference(PractitionerRole/nurse)
* participant[1].status = #needs-action
* participant[1].required = #required
* requestedPeriod.start = "2019-11-12" 
* requestedPeriod.end = "2019-11-15" 
