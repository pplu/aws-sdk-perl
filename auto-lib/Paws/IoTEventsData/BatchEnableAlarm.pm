
package Paws::IoTEventsData::BatchEnableAlarm;
  use Moose;
  has EnableActionRequests => (is => 'ro', isa => 'ArrayRef[Paws::IoTEventsData::EnableAlarmActionRequest]', traits => ['NameInRequest'], request_name => 'enableActionRequests', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchEnableAlarm');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/alarms/enable');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTEventsData::BatchEnableAlarmResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEventsData::BatchEnableAlarm - Arguments for method BatchEnableAlarm on L<Paws::IoTEventsData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchEnableAlarm on the
L<AWS IoT Events Data|Paws::IoTEventsData> service. Use the attributes of this class
as arguments to method BatchEnableAlarm.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchEnableAlarm.

=head1 SYNOPSIS

    my $data.iotevents = Paws->service('IoTEventsData');
    my $BatchEnableAlarmResponse = $data . iotevents->BatchEnableAlarm(
      EnableActionRequests => [
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
    my $ErrorEntries = $BatchEnableAlarmResponse->ErrorEntries;

    # Returns a L<Paws::IoTEventsData::BatchEnableAlarmResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/data.iotevents/BatchEnableAlarm>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EnableActionRequests => ArrayRef[L<Paws::IoTEventsData::EnableAlarmActionRequest>]

The list of enable action requests. You can specify up to 10 requests
per operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchEnableAlarm in L<Paws::IoTEventsData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

