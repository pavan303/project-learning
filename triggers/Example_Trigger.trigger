trigger Example_Trigger on Account (after insert) {
    Map<Id,Account> newMap = Trigger.newMap;
    Set<Id> keys = newMap.keySet();
    Future_Call.invoke(keys);


}