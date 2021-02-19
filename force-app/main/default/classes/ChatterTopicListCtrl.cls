/**
 * Author: AI
 */
public without sharing class ChatterTopicListCtrl {

    // SELECT Id, NetworkId, Name, Description, TalkingAbout, ManagedTopicType FROM Topic
    //SELECT Id, NetworkId, TopicId, EntityId, EntityKeyPrefix, EntityType FROM TopicAssignment

    @AuraEnabled(cacheable=true)
    public static List<Topic> getTopicList() {
        return [SELECT Id, Name, Description, TalkingAbout, ManagedTopicType FROM Topic];
    }

    @AuraEnabled(cacheable=true)
    public static List<TopicAssignment> getTopicAssignment(){
        return [SELECT Id, TopicId, EntityId, EntityKeyPrefix, EntityType FROM TopicAssignment];
    }
}
