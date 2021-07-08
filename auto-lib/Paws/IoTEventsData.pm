package Paws::IoTEventsData;
  use Moose;
  sub service { 'data.iotevents' }
  sub signing_name { 'ioteventsdata' }
  sub version { '2018-10-23' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub BatchAcknowledgeAlarm {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTEventsData::BatchAcknowledgeAlarm', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDisableAlarm {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTEventsData::BatchDisableAlarm', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchEnableAlarm {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTEventsData::BatchEnableAlarm', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchPutMessage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTEventsData::BatchPutMessage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchResetAlarm {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTEventsData::BatchResetAlarm', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchSnoozeAlarm {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTEventsData::BatchSnoozeAlarm', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchUpdateDetector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTEventsData::BatchUpdateDetector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAlarm {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTEventsData::DescribeAlarm', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDetector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTEventsData::DescribeDetector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAlarms {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTEventsData::ListAlarms', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDetectors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTEventsData::ListDetectors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/BatchAcknowledgeAlarm BatchDisableAlarm BatchEnableAlarm BatchPutMessage BatchResetAlarm BatchSnoozeAlarm BatchUpdateDetector DescribeAlarm DescribeDetector ListAlarms ListDetectors / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEventsData - Perl Interface to AWS AWS IoT Events Data

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('IoTEventsData');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

AWS IoT Events monitors your equipment or device fleets for failures or
changes in operation, and triggers actions when such events occur. You
can use AWS IoT Events Data API commands to send inputs to detectors,
list detectors, and view or update a detector's status.

For more information, see What is AWS IoT Events?
(https://docs.aws.amazon.com/iotevents/latest/developerguide/what-is-iotevents.html)
in the I<AWS IoT Events Developer Guide>.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/data.iotevents-2018-10-23>


=head1 METHODS

=head2 BatchAcknowledgeAlarm

=over

=item AcknowledgeActionRequests => ArrayRef[L<Paws::IoTEventsData::AcknowledgeAlarmActionRequest>]


=back

Each argument is described in detail in: L<Paws::IoTEventsData::BatchAcknowledgeAlarm>

Returns: a L<Paws::IoTEventsData::BatchAcknowledgeAlarmResponse> instance

Acknowledges one or more alarms. The alarms change to the
C<ACKNOWLEDGED> state after you acknowledge them.


=head2 BatchDisableAlarm

=over

=item DisableActionRequests => ArrayRef[L<Paws::IoTEventsData::DisableAlarmActionRequest>]


=back

Each argument is described in detail in: L<Paws::IoTEventsData::BatchDisableAlarm>

Returns: a L<Paws::IoTEventsData::BatchDisableAlarmResponse> instance

Disables one or more alarms. The alarms change to the C<DISABLED> state
after you disable them.


=head2 BatchEnableAlarm

=over

=item EnableActionRequests => ArrayRef[L<Paws::IoTEventsData::EnableAlarmActionRequest>]


=back

Each argument is described in detail in: L<Paws::IoTEventsData::BatchEnableAlarm>

Returns: a L<Paws::IoTEventsData::BatchEnableAlarmResponse> instance

Enables one or more alarms. The alarms change to the C<NORMAL> state
after you enable them.


=head2 BatchPutMessage

=over

=item Messages => ArrayRef[L<Paws::IoTEventsData::Message>]


=back

Each argument is described in detail in: L<Paws::IoTEventsData::BatchPutMessage>

Returns: a L<Paws::IoTEventsData::BatchPutMessageResponse> instance

Sends a set of messages to the AWS IoT Events system. Each message
payload is transformed into the input you specify (C<"inputName">) and
ingested into any detectors that monitor that input. If multiple
messages are sent, the order in which the messages are processed isn't
guaranteed. To guarantee ordering, you must send messages one at a time
and wait for a successful response.


=head2 BatchResetAlarm

=over

=item ResetActionRequests => ArrayRef[L<Paws::IoTEventsData::ResetAlarmActionRequest>]


=back

Each argument is described in detail in: L<Paws::IoTEventsData::BatchResetAlarm>

Returns: a L<Paws::IoTEventsData::BatchResetAlarmResponse> instance

Resets one or more alarms. The alarms return to the C<NORMAL> state
after you reset them.


=head2 BatchSnoozeAlarm

=over

=item SnoozeActionRequests => ArrayRef[L<Paws::IoTEventsData::SnoozeAlarmActionRequest>]


=back

Each argument is described in detail in: L<Paws::IoTEventsData::BatchSnoozeAlarm>

Returns: a L<Paws::IoTEventsData::BatchSnoozeAlarmResponse> instance

Changes one or more alarms to the snooze mode. The alarms change to the
C<SNOOZE_DISABLED> state after you set them to the snooze mode.


=head2 BatchUpdateDetector

=over

=item Detectors => ArrayRef[L<Paws::IoTEventsData::UpdateDetectorRequest>]


=back

Each argument is described in detail in: L<Paws::IoTEventsData::BatchUpdateDetector>

Returns: a L<Paws::IoTEventsData::BatchUpdateDetectorResponse> instance

Updates the state, variable values, and timer settings of one or more
detectors (instances) of a specified detector model.


=head2 DescribeAlarm

=over

=item AlarmModelName => Str

=item [KeyValue => Str]


=back

Each argument is described in detail in: L<Paws::IoTEventsData::DescribeAlarm>

Returns: a L<Paws::IoTEventsData::DescribeAlarmResponse> instance

Retrieves information about an alarm.


=head2 DescribeDetector

=over

=item DetectorModelName => Str

=item [KeyValue => Str]


=back

Each argument is described in detail in: L<Paws::IoTEventsData::DescribeDetector>

Returns: a L<Paws::IoTEventsData::DescribeDetectorResponse> instance

Returns information about the specified detector (instance).


=head2 ListAlarms

=over

=item AlarmModelName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTEventsData::ListAlarms>

Returns: a L<Paws::IoTEventsData::ListAlarmsResponse> instance

Lists one or more alarms. The operation returns only the metadata
associated with each alarm.


=head2 ListDetectors

=over

=item DetectorModelName => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [StateName => Str]


=back

Each argument is described in detail in: L<Paws::IoTEventsData::ListDetectors>

Returns: a L<Paws::IoTEventsData::ListDetectorsResponse> instance

Lists detectors (the instances of a detector model).




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

