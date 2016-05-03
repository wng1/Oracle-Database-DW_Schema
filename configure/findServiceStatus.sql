SELECT
SR.SMS_R_System.ResourceId, 
SR.SMS_R_System.ResourceType, 
SR.SMS_R_System.Name, 
SR.SMS_R_System.SMSUniqueIdentifier, 
SR.SMS_R_System.ResourceDomainORWorkgroup, 
SR.SMS_R_System.Client 

FROM  SMS_R_System AS SR INNER JOIN SMS_G_System_SERVICE AS SG
ON SMS_G_System_SERVICE.ResourceID = SMS_R_System.ResourceId 
WHERE SMS_G_System_SERVICE.Name = "Service1" AND SMS_G_System_SERVICE.State = "Running"
