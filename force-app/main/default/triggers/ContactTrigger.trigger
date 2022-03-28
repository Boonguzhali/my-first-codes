trigger ContactTrigger on Contact (after insert, after update,after delete, after undelete) {
    if (Trigger.isAfter) {
        for(Contact)
    }

}