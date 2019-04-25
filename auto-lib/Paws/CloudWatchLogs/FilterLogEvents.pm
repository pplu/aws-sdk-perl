
package Paws::CloudWatchLogs::FilterLogEvents;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'endTime' );
  has FilterPattern => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'filterPattern' );
  has Interleaved => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'interleaved' );
  has Limit => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'limit' );
  has LogGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logGroupName' , required => 1);
  has LogStreamNamePrefix => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logStreamNamePrefix' );
  has LogStreamNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'logStreamNames' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has StartTime => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'startTime' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'FilterLogEvents');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchLogs::FilterLogEventsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::FilterLogEvents - Arguments for method FilterLogEvents on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method FilterLogEvents on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method FilterLogEvents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to FilterLogEvents.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    my $FilterLogEventsResponse = $logs->FilterLogEvents(
      LogGroupName        => 'MyLogGroupName',
      EndTime             => 1,                    # OPTIONAL
      FilterPattern       => 'MyFilterPattern',    # OPTIONAL
      Interleaved         => 1,                    # OPTIONAL
      Limit               => 1,                    # OPTIONAL
      LogStreamNamePrefix => 'MyLogStreamName',    # OPTIONAL
      LogStreamNames      => [
        'MyLogStreamName', ...                     # min: 1, max: 512
      ],                                           # OPTIONAL
      NextToken => 'MyNextToken',                  # OPTIONAL
      StartTime => 1,                              # OPTIONAL
    );

    # Results:
    my $Events             = $FilterLogEventsResponse->Events;
    my $NextToken          = $FilterLogEventsResponse->NextToken;
    my $SearchedLogStreams = $FilterLogEventsResponse->SearchedLogStreams;

    # Returns a L<Paws::CloudWatchLogs::FilterLogEventsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/FilterLogEvents>

=head1 ATTRIBUTES


=head2 EndTime => Int

The end of the time range, expressed as the number of milliseconds
after Jan 1, 1970 00:00:00 UTC. Events with a timestamp later than this
time are not returned.



=head2 FilterPattern => Str

The filter pattern to use. For more information, see Filter and Pattern
Syntax
(http://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html).

If not provided, all the events are matched.



=head2 Interleaved => Bool

If the value is true, the operation makes a best effort to provide
responses that contain events from multiple log streams within the log
group, interleaved in a single response. If the value is false, all the
matched log events in the first log stream are searched first, then
those in the next log stream, and so on. The default is false.



=head2 Limit => Int

The maximum number of events to return. The default is 10,000 events.



=head2 B<REQUIRED> LogGroupName => Str

The name of the log group to search.



=head2 LogStreamNamePrefix => Str

Filters the results to include only events from log streams that have
names starting with this prefix.

If you specify a value for both C<logStreamNamePrefix> and
C<logStreamNames>, but the value for C<logStreamNamePrefix> does not
match any log stream names specified in C<logStreamNames>, the action
returns an C<InvalidParameterException> error.



=head2 LogStreamNames => ArrayRef[Str|Undef]

Filters the results to only logs from the log streams in this list.

If you specify a value for both C<logStreamNamePrefix> and
C<logStreamNames>, the action returns an C<InvalidParameterException>
error.



=head2 NextToken => Str

The token for the next set of events to return. (You received this
token from a previous call.)



=head2 StartTime => Int

The start of the time range, expressed as the number of milliseconds
after Jan 1, 1970 00:00:00 UTC. Events with a timestamp before this
time are not returned.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method FilterLogEvents in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

