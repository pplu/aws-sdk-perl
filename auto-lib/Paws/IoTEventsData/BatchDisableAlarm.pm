
package Paws::IoTEventsData::BatchDisableAlarm;
  use Moose;
  has DisableActionRequests => (is => 'ro', isa => 'ArrayRef[Paws::IoTEventsData::DisableAlarmActionRequest]', traits => ['NameInRequest'], request_name => 'disableActionRequests', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchDisableAlarm');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/alarms/disable');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTEventsData::BatchDisableAlarmResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEventsData::BatchDisableAlarm - Arguments for method BatchDisableAlarm on L<Paws::IoTEventsData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchDisableAlarm on the
L<AWS IoT Events Data|Paws::IoTEventsData> service. Use the attributes of this class
as arguments to method BatchDisableAlarm.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchDisableAlarm.

=head1 SYNOPSIS

    my $data.iotevents = Paws->service('IoTEventsData');
    my $BatchDisableAlarmResponse = $data . iotevents->BatchDisableAlarm(
      DisableActionRequests => [
        {
          AlarmModelName => 'MyAlarmModelName',    # min: 1, max: 128
          RequestId      => 'MyRequestId',         # min: 1, max: 64
          KeyValue       => 'MyKeyValue',          # min: 1, max: 128; OPTIONAL
          Note           => 'MyNote',              # max: 256; OPTIONAL
        },
        ...
      ],

    );

    # Results:
    my $ErrorEntries = $BatchDisableAlarmResponse->ErrorEntries;

    # Returns a L<Paws::IoTEventsData::BatchDisableAlarmResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/data.iotevents/BatchDisableAlarm>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DisableActionRequests => ArrayRef[L<Paws::IoTEventsData::DisableAlarmActionRequest>]

The list of disable action requests. You can specify up to 10 requests
per operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchDisableAlarm in L<Paws::IoTEventsData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

