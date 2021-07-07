trigger SampleAccountApexTrigger on Account (before update) {

        //Define variable and get custom setting value for running user 
        Process_Switches__c processSwitch = Process_Switches__c.getInstance(UserInfo.getProfileId());

        //If the process is enabled for the user continue the trigger
        if(processSwitch.Apex_Triggers__c)
        {
            for (Account a : Trigger.new){
            a.Sic = 'Trigger Successful';
            }
        }
}