
package Paws::IoTEventsData::BatchResetAlarm;
  use Moose;
  has ResetActionRequests => (is => 'ro', isa => 'ArrayRef[Paws::IoTEventsData::ResetAlarmActionRequest]', traits => ['NameInRequest'], request_name => 'resetActionRequests', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchResetAlarm');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/alarms/reset');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTEventsData::BatchResetAlarmResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEventsData::BatchResetAlarm - Arguments for method BatchResetAlarm on L<Paws::IoTEventsData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchResetAlarm on the
L<AWS IoT Events Data|Paws::IoTEventsData> service. Use the attributes of this class
as arguments to method BatchResetAlarm.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchResetAlarm.

=head1 SYNOPSIS

    my $data.iotevents = Paws->service('IoTEventsData');
    my $BatchResetAlarmResponse = $data . iotevents->BatchResetAlarm(
      ResetActionRequests => [
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
    my $ErrorEntries = $BatchResetAlarmResponse->ErrorEntries;

    # Returns a L<Paws::IoTEventsData::BatchResetAlarmResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/data.iotevents/BatchResetAlarm>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResetActionRequests => ArrayRef[L<Paws::IoTEventsData::ResetAlarmActionRequest>]

The list of reset action requests. You can specify up to 10 requests
per operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchResetAlarm in L<Paws::IoTEventsData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

