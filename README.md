# Salesforce DX Project: Next Steps

The aim of this repo is to understand the usermode and System mode for salesforce.
The first step is to test it on visualforce and the impact of With/withou sharing.

## How Do You Use?

- Deploy to your sandbox/org. 
- Create a user with standard profile
- Add him the permission set : UserModeSystemMode
- Login in with this user
- go to the url : /apex/UMSM_ControllerCustomWithSharing
- open link and create / update / read data from button

## Result

*for Visulaforce*:
- with sharing in custom controller: **System mode**
- without sharing in custom controller: **System mode**
- with sharing in standard controller with extension: **System mode**
- without sharing in standard controller with extension: **System mode**

**NB:** 
There is some strange things on the delete operation. In some case, the without sharing let you delete record and withsharing let you delete onle record you own. 