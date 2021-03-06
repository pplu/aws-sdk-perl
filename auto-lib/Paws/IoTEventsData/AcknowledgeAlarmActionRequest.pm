# Generated by default/object.tt
package Paws::IoTEventsData::AcknowledgeAlarmActionRequest;
  use Moose;
  has AlarmModelName => (is => 'ro', isa => 'Str', request_name => 'alarmModelName', traits => ['NameInRequest'], required => 1);
  has KeyValue => (is => 'ro', isa => 'Str', request_name => 'keyValue', traits => ['NameInRequest']);
  has Note => (is => 'ro', isa => 'Str', request_name => 'note', traits => ['NameInRequest']);
  has RequestId => (is => 'ro', isa => 'Str', request_name => 'requestId', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEventsData::AcknowledgeAlarmActionRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTEventsData::AcknowledgeAlarmActionRequest object:

  $service_obj->Method(Att1 => { AlarmModelName => $value, ..., RequestId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTEventsData::AcknowledgeAlarmActionRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->AlarmModelName

=head1 DESCRIPTION

Information needed to acknowledge the alarm.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AlarmModelName => Str

The name of the alarm model.


=head2 KeyValue => Str

The value of the key used as a filter to select only the alarms
associated with the key
(https://docs.aws.amazon.com/iotevents/latest/apireference/API_CreateAlarmModel.html#iotevents-CreateAlarmModel-request-key).


=head2 Note => Str

The note that you can leave when you acknowledge the alarm.


=head2 B<REQUIRED> RequestId => Str

The request ID. Each ID must be unique within each batch.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTEventsData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

