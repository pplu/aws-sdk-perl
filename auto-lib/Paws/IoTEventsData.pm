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

  
  sub BatchPutMessage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTEventsData::BatchPutMessage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchUpdateDetector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTEventsData::BatchUpdateDetector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDetector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTEventsData::DescribeDetector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDetectors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTEventsData::ListDetectors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/BatchPutMessage BatchUpdateDetector DescribeDetector ListDetectors / }

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
changes in operation, and triggers actions when such events occur. AWS
IoT Events Data API commands enable you to send inputs to detectors,
list detectors, and view or update a detector's status.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/data.iotevents-2018-10-23>


=head1 METHODS

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


=head2 BatchUpdateDetector

=over

=item Detectors => ArrayRef[L<Paws::IoTEventsData::UpdateDetectorRequest>]


=back

Each argument is described in detail in: L<Paws::IoTEventsData::BatchUpdateDetector>

Returns: a L<Paws::IoTEventsData::BatchUpdateDetectorResponse> instance

Updates the state, variable values, and timer settings of one or more
detectors (instances) of a specified detector model.


=head2 DescribeDetector

=over

=item DetectorModelName => Str

=item [KeyValue => Str]


=back

Each argument is described in detail in: L<Paws::IoTEventsData::DescribeDetector>

Returns: a L<Paws::IoTEventsData::DescribeDetectorResponse> instance

Returns information about the specified detector (instance).


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

