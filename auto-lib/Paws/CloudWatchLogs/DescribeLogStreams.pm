
package Paws::CloudWatchLogs::DescribeLogStreams;
  use Moose;
  has Descending => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'descending' );
  has Limit => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'limit' );
  has LogGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logGroupName' , required => 1);
  has LogStreamNamePrefix => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logStreamNamePrefix' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has OrderBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'orderBy' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLogStreams');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchLogs::DescribeLogStreamsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::DescribeLogStreams - Arguments for method DescribeLogStreams on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeLogStreams on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method DescribeLogStreams.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeLogStreams.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    my $DescribeLogStreamsResponse = $logs->DescribeLogStreams(
      LogGroupName        => 'MyLogGroupName',
      Descending          => 1,                    # OPTIONAL
      Limit               => 1,                    # OPTIONAL
      LogStreamNamePrefix => 'MyLogStreamName',    # OPTIONAL
      NextToken           => 'MyNextToken',        # OPTIONAL
      OrderBy             => 'LogStreamName',      # OPTIONAL
    );

    # Results:
    my $LogStreams = $DescribeLogStreamsResponse->LogStreams;
    my $NextToken  = $DescribeLogStreamsResponse->NextToken;

    # Returns a L<Paws::CloudWatchLogs::DescribeLogStreamsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/DescribeLogStreams>

=head1 ATTRIBUTES


=head2 Descending => Bool

If the value is true, results are returned in descending order. If the
value is to false, results are returned in ascending order. The default
value is false.



=head2 Limit => Int

The maximum number of items returned. If you don't specify a value, the
default is up to 50 items.



=head2 B<REQUIRED> LogGroupName => Str

The name of the log group.



=head2 LogStreamNamePrefix => Str

The prefix to match.

If C<orderBy> is C<LastEventTime>,you cannot specify this parameter.



=head2 NextToken => Str

The token for the next set of items to return. (You received this token
from a previous call.)



=head2 OrderBy => Str

If the value is C<LogStreamName>, the results are ordered by log stream
name. If the value is C<LastEventTime>, the results are ordered by the
event time. The default value is C<LogStreamName>.

If you order the results by event time, you cannot specify the
C<logStreamNamePrefix> parameter.

lastEventTimestamp represents the time of the most recent log event in
the log stream in CloudWatch Logs. This number is expressed as the
number of milliseconds after Jan 1, 1970 00:00:00 UTC.
lastEventTimeStamp updates on an eventual consistency basis. It
typically updates in less than an hour from ingestion, but may take
longer in some rare situations.

Valid values are: C<"LogStreamName">, C<"LastEventTime">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeLogStreams in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

