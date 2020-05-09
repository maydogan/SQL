SELECT DISTINCT
SMS_R_System.Name0,
MAX(case when __System_ADD_REMOVE_PROGRAMS0.DisplayName00 like N'%Teamviewer%' then 'YES' else 'NO' end) AS 'Teamviwer'
from 
vSMS_R_System AS SMS_R_System INNER JOIN Add_Remove_Programs_DATA 
AS __System_ADD_REMOVE_PROGRAMS0 
ON __System_ADD_REMOVE_PROGRAMS0.MachineID = SMS_R_System.ItemKey  
INNER JOIN _RES_COLL_SMS00001 AS SMS_CM_RES_COLL_SMS00001
ON SMS_CM_RES_COLL_SMS00001.MachineID = SMS_R_System.ItemKey   
where __System_ADD_REMOVE_PROGRAMS0.DisplayName00 like N'%Teamviewer%'
GROUP BY SMS_R_System.Name0
