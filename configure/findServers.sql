SELECT
SR.ResourceID,
SR.ResourceType,
SR.Name,
SR.ResourceIdentifier

FROM SMS_R_SYSTEM AS SR  INNER JOIN  SMS_G_SYSTEM AS SG
ON SYS_G_SYSTEM.ResourceID = SMS_R_SYSTEM.ResourceID
WHERE SMG_G_SYSTEM_SYSTEM.SystemRole = “Server”


