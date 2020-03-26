Profile:        BeCareTeam
Parent:         CareTeam
Id:             be-careteam
Title:          "BE Care Team"
Description:    """ 
    Defines constraints and extensions on the patient resource for 
    the minimal set of data to query and retrieve patient demographic information."""
// NOTE: MS can also be done in multiple lines:
// * identifier MS
// * identifier.system MS
// ...
* status, category, subject, participant, note MS
* subject only Reference(be-patient)