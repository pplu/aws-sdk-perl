
use Paws::API;


package Paws::CloudWatchLogs {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'logs');
  has version => (is => 'ro', isa => 'Str', default => '2014-03-28');
  has target_prefix => (is => 'ro', isa => 'Str', default => 'Logs_20140328');
  has json_version => (is => 'ro', isa => 'Str', default => "1.1");

  with 'Paws::API::RegionalEndpointCaller', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller', 'Paws::Net::JsonResponse';

  
  sub CreateLogGroup {
    my $self = shift;
    return $self->do_call('Paws::CloudWatchLogs::CreateLogGroup', @_);
  }
  sub CreateLogStream {
    my $self = shift;
    return $self->do_call('Paws::CloudWatchLogs::CreateLogStream', @_);
  }
  sub DeleteLogGroup {
    my $self = shift;
    return $self->do_call('Paws::CloudWatchLogs::DeleteLogGroup', @_);
  }
  sub DeleteLogStream {
    my $self = shift;
    return $self->do_call('Paws::CloudWatchLogs::DeleteLogStream', @_);
  }
  sub DeleteMetricFilter {
    my $self = shift;
    return $self->do_call('Paws::CloudWatchLogs::DeleteMetricFilter', @_);
  }
  sub DeleteRetentionPolicy {
    my $self = shift;
    return $self->do_call('Paws::CloudWatchLogs::DeleteRetentionPolicy', @_);
  }
  sub DescribeLogGroups {
    my $self = shift;
    return $self->do_call('Paws::CloudWatchLogs::DescribeLogGroups', @_);
  }
  sub DescribeLogStreams {
    my $self = shift;
    return $self->do_call('Paws::CloudWatchLogs::DescribeLogStreams', @_);
  }
  sub DescribeMetricFilters {
    my $self = shift;
    return $self->do_call('Paws::CloudWatchLogs::DescribeMetricFilters', @_);
  }
  sub GetLogEvents {
    my $self = shift;
    return $self->do_call('Paws::CloudWatchLogs::GetLogEvents', @_);
  }
  sub PutLogEvents {
    my $self = shift;
    return $self->do_call('Paws::CloudWatchLogs::PutLogEvents', @_);
  }
  sub PutMetricFilter {
    my $self = shift;
    return $self->do_call('Paws::CloudWatchLogs::PutMetricFilter', @_);
  }
  sub PutRetentionPolicy {
    my $self = shift;
    return $self->do_call('Paws::CloudWatchLogs::PutRetentionPolicy', @_);
  }
  sub TestMetricFilter {
    my $self = shift;
    return $self->do_call('Paws::CloudWatchLogs::TestMetricFilter', @_);
  }
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs - Perl Interface to AWS Amazon CloudWatch Logs

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('...')->new;
  my $res = $obj->Method(Arg1 => $val1, Arg2 => $val2);

=head1 DESCRIPTION



Amazon CloudWatch Logs API Reference

This is the I<Amazon CloudWatch Logs API Reference>. Amazon CloudWatch
Logs enables you to monitor, store, and access your system,
application, and custom log files. This guide provides detailed
information about Amazon CloudWatch Logs actions, data types,
parameters, and errors. For detailed information about Amazon
CloudWatch Logs features and their associated API calls, go to the
Amazon CloudWatch Developer Guide.

Use the following links to get started using the I<Amazon CloudWatch
Logs API Reference>:

=over

=item * Actions: An alphabetical list of all Amazon CloudWatch Logs
actions.

=item * Data Types: An alphabetical list of all Amazon CloudWatch Logs
data types.

=item * Common Parameters: Parameters that all Query actions can use.

=item * Common Errors: Client and server errors that all actions can
return.

=item * Regions and Endpoints: Itemized regions and endpoints for all
AWS products.

=back

In addition to using the Amazon CloudWatch Logs API, you can also use
the following SDKs and third-party libraries to access Amazon
CloudWatch Logs programmatically.

=over

=item * AWS SDK for Java Documentation

=item * AWS SDK for .NET Documentation

=item * AWS SDK for PHP Documentation

=item * AWS SDK for Ruby Documentation

=back

Developers in the AWS developer community also provide their own
libraries, which you can find at the following AWS developer centers:

=over

=item * AWS Java Developer Center

=item * AWS PHP Developer Center

=item * AWS Python Developer Center

=item * AWS Ruby Developer Center

=item * AWS Windows and .NET Developer Center

=back










=head1 METHODS

=head2 CreateLogGroup()

  Arguments described in: L<Paws::CloudWatchLogs::CreateLogGroup>

  Returns: nothing

  

Creates a new log group with the specified name. The name of the log
group must be unique within a region for an AWS account. You can create
up to 500 log groups per account.

You must use the following guidelines when naming a log group:

=over

=item * Log group names can be between 1 and 512 characters long.

=item * Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-'
(hyphen), '/' (forward slash), and '.' (period).

=back











=head2 CreateLogStream()

  Arguments described in: L<Paws::CloudWatchLogs::CreateLogStream>

  Returns: nothing

  

Creates a new log stream in the specified log group. The name of the
log stream must be unique within the log group. There is no limit on
the number of log streams that can exist in a log group.

You must use the following guidelines when naming a log stream:

=over

=item * Log stream names can be between 1 and 512 characters long.

=item * The ':' colon character is not allowed.

=back











=head2 DeleteLogGroup()

  Arguments described in: L<Paws::CloudWatchLogs::DeleteLogGroup>

  Returns: nothing

  

Deletes the log group with the specified name and permanently deletes
all the archived log events associated with it.











=head2 DeleteLogStream()

  Arguments described in: L<Paws::CloudWatchLogs::DeleteLogStream>

  Returns: nothing

  

Deletes a log stream and permanently deletes all the archived log
events associated with it.











=head2 DeleteMetricFilter()

  Arguments described in: L<Paws::CloudWatchLogs::DeleteMetricFilter>

  Returns: nothing

  

Deletes a metric filter associated with the specified log group.











=head2 DeleteRetentionPolicy()

  Arguments described in: L<Paws::CloudWatchLogs::DeleteRetentionPolicy>

  Returns: nothing

  

Deletes the retention policy of the specified log group. Log events
would not expire if they belong to log groups without a retention
policy.











=head2 DescribeLogGroups()

  Arguments described in: L<Paws::CloudWatchLogs::DescribeLogGroups>

  Returns: L<Paws::CloudWatchLogs::DescribeLogGroupsResponse>

  

Returns all the log groups that are associated with the AWS account
making the request. The list returned in the response is ASCII-sorted
by log group name.

By default, this operation returns up to 50 log groups. If there are
more log groups to list, the response would contain a C<nextToken>
value in the response body. You can also limit the number of log groups
returned in the response by specifying the C<limit> parameter in the
request.











=head2 DescribeLogStreams()

  Arguments described in: L<Paws::CloudWatchLogs::DescribeLogStreams>

  Returns: L<Paws::CloudWatchLogs::DescribeLogStreamsResponse>

  

Returns all the log streams that are associated with the specified log
group. The list returned in the response is ASCII-sorted by log stream
name.

By default, this operation returns up to 50 log streams. If there are
more log streams to list, the response would contain a C<nextToken>
value in the response body. You can also limit the number of log
streams returned in the response by specifying the C<limit> parameter
in the request.











=head2 DescribeMetricFilters()

  Arguments described in: L<Paws::CloudWatchLogs::DescribeMetricFilters>

  Returns: L<Paws::CloudWatchLogs::DescribeMetricFiltersResponse>

  

Returns all the metrics filters associated with the specified log
group. The list returned in the response is ASCII-sorted by filter
name.

By default, this operation returns up to 50 metric filters. If there
are more metric filters to list, the response would contain a
C<nextToken> value in the response body. You can also limit the number
of metric filters returned in the response by specifying the C<limit>
parameter in the request.











=head2 GetLogEvents()

  Arguments described in: L<Paws::CloudWatchLogs::GetLogEvents>

  Returns: L<Paws::CloudWatchLogs::GetLogEventsResponse>

  

Retrieves log events from the specified log stream. You can provide an
optional time range to filter the results on the event C<timestamp>.

By default, this operation returns as much log events as can fit in a
response size of 1MB, up to 10,000 log events. The response will always
include a C<nextForwardToken> and a C<nextBackwardToken> in the
response body. You can use any of these tokens in subsequent
C<GetLogEvents> requests to paginate through events in either forward
or backward direction. You can also limit the number of log events
returned in the response by specifying the C<limit> parameter in the
request.











=head2 PutLogEvents()

  Arguments described in: L<Paws::CloudWatchLogs::PutLogEvents>

  Returns: L<Paws::CloudWatchLogs::PutLogEventsResponse>

  

Uploads a batch of log events to the specified log stream.

Every PutLogEvents request must include the C<sequenceToken> obtained
from the response of the previous request. An upload in a newly created
log stream does not require a C<sequenceToken>.

The batch of events must satisfy the following constraints:

=over

=item * The maximum batch size is 32,768 bytes, and this size is
calculated as the sum of all event messages in UTF-8, plus 26 bytes for
each log event.

=item * None of the log events in the batch can be more than 2 hours in
the future.

=item * None of the log events in the batch can be older than 14 days
or the retention period of the log group.

=item * The log events in the batch must be in chronological ordered by
their C<timestamp>.

=item * The maximum number of log events in a batch is 1,000.

=back











=head2 PutMetricFilter()

  Arguments described in: L<Paws::CloudWatchLogs::PutMetricFilter>

  Returns: nothing

  

Creates or updates a metric filter and associates it with the specified
log group. Metric filters allow you to configure rules to extract
metric data from log events ingested through C<PutLogEvents> requests.











=head2 PutRetentionPolicy()

  Arguments described in: L<Paws::CloudWatchLogs::PutRetentionPolicy>

  Returns: nothing

  

Sets the retention of the specified log group. A retention policy
allows you to configure the number of days you want to retain log
events in the specified log group.











=head2 TestMetricFilter()

  Arguments described in: L<Paws::CloudWatchLogs::TestMetricFilter>

  Returns: L<Paws::CloudWatchLogs::TestMetricFilterResponse>

  

Tests the filter pattern of a metric filter against a sample of log
event messages. You can use this operation to validate the correctness
of a metric filter pattern.











=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

