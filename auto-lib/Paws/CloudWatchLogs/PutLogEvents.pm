
package Paws::CloudWatchLogs::PutLogEvents;
  use Moose;
  has LogEvents => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchLogs::InputLogEvent]', traits => ['NameInRequest'], request_name => 'logEvents' , required => 1);
  has LogGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logGroupName' , required => 1);
  has LogStreamName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logStreamName' , required => 1);
  has SequenceToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sequenceToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutLogEvents');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchLogs::PutLogEventsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::PutLogEvents - Arguments for method PutLogEvents on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutLogEvents on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method PutLogEvents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutLogEvents.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    my $PutLogEventsResponse = $logs->PutLogEvents(
      LogEvents => [
        {
          Message   => 'MyEventMessage',    # min: 1
          Timestamp => 1,

        },
        ...
      ],
      LogGroupName  => 'MyLogGroupName',
      LogStreamName => 'MyLogStreamName',
      SequenceToken => 'MySequenceToken',    # OPTIONAL
    );

    # Results:
    my $NextSequenceToken     = $PutLogEventsResponse->NextSequenceToken;
    my $RejectedLogEventsInfo = $PutLogEventsResponse->RejectedLogEventsInfo;

    # Returns a L<Paws::CloudWatchLogs::PutLogEventsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/PutLogEvents>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LogEvents => ArrayRef[L<Paws::CloudWatchLogs::InputLogEvent>]

The log events.



=head2 B<REQUIRED> LogGroupName => Str

The name of the log group.



=head2 B<REQUIRED> LogStreamName => Str

The name of the log stream.



=head2 SequenceToken => Str

The sequence token obtained from the response of the previous
C<PutLogEvents> call. An upload in a newly created log stream does not
require a sequence token. You can also get the sequence token using
DescribeLogStreams. If you call C<PutLogEvents> twice within a narrow
time period using the same value for C<sequenceToken>, both calls may
be successful, or one may be rejected.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutLogEvents in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

