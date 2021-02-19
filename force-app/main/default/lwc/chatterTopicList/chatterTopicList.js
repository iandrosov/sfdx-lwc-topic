import { LightningElement, wire } from 'lwc';
import getTopicList from '@salesforce/apex/ChatterTopicListCtrl.getTopicList';

const columns = [
    { label: 'Name', fieldName: 'Name' },
    { label: 'NetworkId', fieldName: 'NetworkId' },
    { label: 'Description', fieldName: 'Description' },
    { label: 'TalkingAbout', fieldName: 'TalkingAbout' },
    { label: 'ManagedTopicType', fieldName: 'ManagedTopicType' }
];

export default class ChatterTopicList extends LightningElement {
    error;
    columns = columns;

    @wire(getTopicList)
    topics;
}