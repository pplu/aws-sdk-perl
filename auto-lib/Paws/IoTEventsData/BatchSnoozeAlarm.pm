
package Paws::IoTEventsData::BatchSnoozeAlarm;
  use Moose;
  has SnoozeActionRequests => (is => 'ro', isa => 'ArrayRef[Paws::IoTEventsData::SnoozeAlarmActionRequest]', traits => ['NameInRequest'], request_name => 'snoozeActionRequests', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchSnoozeAlarm');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/alarms/snooze');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTEventsData::BatchSnoozeAlarmResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEventsData::BatchSnoozeAlarm - Arguments for method BatchSnoozeAlarm on L<Paws::IoTEventsData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchSnoozeAlarm on the
L<AWS IoT Events Data|Paws::IoTEventsData> service. Use the attributes of this class
as arguments to method BatchSnoozeAlarm.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchSnoozeAlarm.

=head1 SYNOPSIS

    my $data.iotevents = Paws->service('IoTEventsData');
    my $BatchSnoozeAlarmResponse = $data . iotevents->BatchSnoozeAlarm(
      SnoozeActionRequests => [
        {
          AlarmModelName => 'MyAlarmModelName',    # min: 1, max: 128
          RequestId      => 'MyRequestId',         # min: 1, max: 64
          SnoozeDuration => 1,
          KeyValue       => 'MyKeyValue',          # min: 1, max: 128; OPTIONAL
          Note           => 'MyNote',              # max: 256; OPTIONAL
        },
        ...
      ],

    );

    # Results:
    my $ErrorEntries = $BatchSnoozeAlarmResponse->ErrorEntries;

    # Returns a L<Paws::IoTEventsData::BatchSnoozeAlarmResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/data.iotevents/BatchSnoozeAlarm>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SnoozeActionRequests => ArrayRef[L<Paws::IoTEventsData::SnoozeAlarmActionRequest>]

The list of snooze action requests. You can specify up to 10 requests
per operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchSnoozeAlarm in L<Paws::IoTEventsData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

