Profile:        BECarePlan
Parent:         CarePlan
Id:             be-careplan
Title:          "BE Care Plan"
Description:    """ 
    Defines constraints and extensions on the patient resource for 
    the minimal set of data to query and retrieve patient demographic information."""
// NOTE: MS can also be done in multiple lines:
// * identifier MS
// * identifier.system MS
// ...
* identifier, instantiatesCanonical, 
  instantiatesUri, basedOn, replaces, partOf, status, intent, 
  category, title, description, subject, encounter, period, created, author, careTeam, goal, activity,
  activity.outcomeCodeableConcept, activity.progress, activity.detail.kind, activity.detail.instantiatesCanonical,
  activity.detail.instantiatesUri, activity.detail.code, activity.detail.status, activity.detail.statusReason,
  activity.detail.doNotPerform, activity.detail.scheduled[x], activity.detail.location, activity.detail.performer,
  activity.detail.description, supportingInfo MS
* subject only Reference(be-patient)

* supportingInfo ^slicing.discriminator.type = #value
* supportingInfo ^slicing.discriminator.path = "identifier.type"
* supportingInfo ^slicing.rules = #open
* supportingInfo contains BelRaiHomeCare 0..1 MS 
* supportingInfo[BelRaiHomeCare].identifier.system = "http://belrai.be"
* supportingInfo[BelRaiHomeCare].identifier.type.coding.code = #74196-7

* basedOn ^slicing.discriminator.type = #value
* basedOn ^slicing.discriminator.path = "reference.type"
* basedOn ^slicing.rules = #open
* basedOn contains basedOnServiceRequest 0..1 MS 
* basedOn[basedOnServiceRequest].identifier.type.coding.code = #ServiceRequest

