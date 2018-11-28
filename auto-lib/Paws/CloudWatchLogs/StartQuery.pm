
package Paws::CloudWatchLogs::StartQuery;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'endTime' , required => 1);
  has Limit => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'limit' );
  has LogGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logGroupName' , required => 1);
  has QueryString => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'queryString' , required => 1);
  has StartTime => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'startTime' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartQuery');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchLogs::StartQueryResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::StartQuery - Arguments for method StartQuery on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartQuery on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method StartQuery.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartQuery.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    my $StartQueryResponse = $logs->StartQuery(
      EndTime      => 1,
      LogGroupName => 'MyLogGroupName',
      QueryString  => 'MyQueryString',
      StartTime    => 1,
      Limit        => 1,                  # OPTIONAL
    );

    # Results:
    my $QueryId = $StartQueryResponse->QueryId;

    # Returns a L<Paws::CloudWatchLogs::StartQueryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/StartQuery>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndTime => Int

The time to end this query, if it is still running. Specified as epoch
time, the number of seconds since January 1, 1970, 00:00:00 UTC.



=head2 Limit => Int

The maximum number of log events to return in the query. If the query
string uses the C<fields> command, only the specified fields and their
values are returned.



=head2 B<REQUIRED> LogGroupName => Str

The log group on which to perform the query.



=head2 B<REQUIRED> QueryString => Str

The query string to use. For more information, see CloudWatch Logs
Insights Query Syntax
(http://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html).



=head2 B<REQUIRED> StartTime => Int

The time to start the query. Specified as epoch time, the number of
seconds since January 1, 1970, 00:00:00 UTC.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartQuery in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

