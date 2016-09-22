package Paws::CloudWatchLogs;
  use Moose;
  sub service { 'logs' }
  sub version { '2014-03-28' }
  sub target_prefix { 'Logs_20140328' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller', 'Paws::Net::JsonResponse';

  
  sub CancelExportTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::CancelExportTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateExportTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::CreateExportTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLogGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::CreateLogGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLogStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::CreateLogStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDestination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::DeleteDestination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLogGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::DeleteLogGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLogStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::DeleteLogStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMetricFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::DeleteMetricFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRetentionPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::DeleteRetentionPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSubscriptionFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::DeleteSubscriptionFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDestinations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::DescribeDestinations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeExportTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::DescribeExportTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLogGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::DescribeLogGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLogStreams {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::DescribeLogStreams', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeMetricFilters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::DescribeMetricFilters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSubscriptionFilters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::DescribeSubscriptionFilters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub FilterLogEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::FilterLogEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLogEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::GetLogEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutDestination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::PutDestination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutDestinationPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::PutDestinationPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutLogEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::PutLogEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutMetricFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::PutMetricFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutRetentionPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::PutRetentionPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutSubscriptionFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::PutSubscriptionFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TestMetricFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::TestMetricFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllDestinations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeDestinations(@_);

    if (not defined $callback) {
      my $params = {};
      $params->{ destinations } = $result->destinations;

      while ($result->nextToken) {
        $result = $self->DescribeDestinations(@_, nextToken => $result->nextToken);
        push @{ $result->destinations }, @{ $result->destinations };
      }
      $self->new_with_coercions(Paws::CloudWatchLogs::DescribeDestinations->_returns, %$params);
    } else {
      while ($result->nextToken) {
        $result = $self->DescribeDestinations(@_, nextToken => $result->nextToken);
        $callback->($_ => 'destinations') foreach (@{ $result->destinations });
      }
    }

    return undef
  }
  sub DescribeAllLogGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeLogGroups(@_);

    if (not defined $callback) {
      my $params = {};
      $params->{ logGroups } = $result->logGroups;

      while ($result->nextToken) {
        $result = $self->DescribeLogGroups(@_, nextToken => $result->nextToken);
        push @{ $result->logGroups }, @{ $result->logGroups };
      }
      $self->new_with_coercions(Paws::CloudWatchLogs::DescribeLogGroups->_returns, %$params);
    } else {
      while ($result->nextToken) {
        $result = $self->DescribeLogGroups(@_, nextToken => $result->nextToken);
        $callback->($_ => 'logGroups') foreach (@{ $result->logGroups });
      }
    }

    return undef
  }
  sub DescribeAllLogStreams {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeLogStreams(@_);

    if (not defined $callback) {
      my $params = {};
      $params->{ logStreams } = $result->logStreams;

      while ($result->nextToken) {
        $result = $self->DescribeLogStreams(@_, nextToken => $result->nextToken);
        push @{ $result->logStreams }, @{ $result->logStreams };
      }
      $self->new_with_coercions(Paws::CloudWatchLogs::DescribeLogStreams->_returns, %$params);
    } else {
      while ($result->nextToken) {
        $result = $self->DescribeLogStreams(@_, nextToken => $result->nextToken);
        $callback->($_ => 'logStreams') foreach (@{ $result->logStreams });
      }
    }

    return undef
  }
  sub DescribeAllMetricFilters {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeMetricFilters(@_);

    if (not defined $callback) {
      my $params = {};
      $params->{ metricFilters } = $result->metricFilters;

      while ($result->nextToken) {
        $result = $self->DescribeMetricFilters(@_, nextToken => $result->nextToken);
        push @{ $result->metricFilters }, @{ $result->metricFilters };
      }
      $self->new_with_coercions(Paws::CloudWatchLogs::DescribeMetricFilters->_returns, %$params);
    } else {
      while ($result->nextToken) {
        $result = $self->DescribeMetricFilters(@_, nextToken => $result->nextToken);
        $callback->($_ => 'metricFilters') foreach (@{ $result->metricFilters });
      }
    }

    return undef
  }
  sub DescribeAllSubscriptionFilters {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeSubscriptionFilters(@_);

    if (not defined $callback) {
      my $params = {};
      $params->{ subscriptionFilters } = $result->subscriptionFilters;

      while ($result->nextToken) {
        $result = $self->DescribeSubscriptionFilters(@_, nextToken => $result->nextToken);
        push @{ $result->subscriptionFilters }, @{ $result->subscriptionFilters };
      }
      $self->new_with_coercions(Paws::CloudWatchLogs::DescribeSubscriptionFilters->_returns, %$params);
    } else {
      while ($result->nextToken) {
        $result = $self->DescribeSubscriptionFilters(@_, nextToken => $result->nextToken);
        $callback->($_ => 'subscriptionFilters') foreach (@{ $result->subscriptionFilters });
      }
    }

    return undef
  }
  sub FilterAllLogEvents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->FilterLogEvents(@_);

    if (not defined $callback) {
      my $params = {};
      $params->{ events } = $result->events;
      $params->{ searchedLogStreams } = $result->searchedLogStreams;

      while ($result->nextToken) {
        $result = $self->FilterLogEvents(@_, nextToken => $result->nextToken);
        push @{ $result->events }, @{ $result->events };
        push @{ $result->searchedLogStreams }, @{ $result->searchedLogStreams };
      }
      $self->new_with_coercions(Paws::CloudWatchLogs::FilterLogEvents->_returns, %$params);
    } else {
      while ($result->nextToken) {
        $result = $self->FilterLogEvents(@_, nextToken => $result->nextToken);
        $callback->($_ => 'events') foreach (@{ $result->events });
        $callback->($_ => 'searchedLogStreams') foreach (@{ $result->searchedLogStreams });
      }
    }

    return undef
  }


  sub operations { qw/CancelExportTask CreateExportTask CreateLogGroup CreateLogStream DeleteDestination DeleteLogGroup DeleteLogStream DeleteMetricFilter DeleteRetentionPolicy DeleteSubscriptionFilter DescribeDestinations DescribeExportTasks DescribeLogGroups DescribeLogStreams DescribeMetricFilters DescribeSubscriptionFilters FilterLogEvents GetLogEvents PutDestination PutDestinationPolicy PutLogEvents PutMetricFilter PutRetentionPolicy PutSubscriptionFilter TestMetricFilter / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs - Perl Interface to AWS Amazon CloudWatch Logs

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('CloudWatchLogs');
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

You can use Amazon CloudWatch Logs to monitor, store, and access your
log files from Amazon Elastic Compute Cloud (Amazon EC2) instances,
Amazon CloudTrail, or other sources. You can then retrieve the
associated log data from CloudWatch Logs using the Amazon CloudWatch
console, the CloudWatch Logs commands in the AWS CLI, the CloudWatch
Logs API, or the CloudWatch Logs SDK.

You can use CloudWatch Logs to:

=over

=item *

B<Monitor Logs from Amazon EC2 Instances in Real-time>: You can use
CloudWatch Logs to monitor applications and systems using log data. For
example, CloudWatch Logs can track the number of errors that occur in
your application logs and send you a notification whenever the rate of
errors exceeds a threshold you specify. CloudWatch Logs uses your log
data for monitoring; so, no code changes are required. For example, you
can monitor application logs for specific literal terms (such as
"NullReferenceException") or count the number of occurrences of a
literal term at a particular position in log data (such as "404" status
codes in an Apache access log). When the term you are searching for is
found, CloudWatch Logs reports the data to a Amazon CloudWatch metric
that you specify.

=item *

B<Monitor Amazon CloudTrail Logged Events>: You can create alarms in
Amazon CloudWatch and receive notifications of particular API activity
as captured by CloudTrail and use the notification to perform
troubleshooting.

=item *

B<Archive Log Data>: You can use CloudWatch Logs to store your log data
in highly durable storage. You can change the log retention setting so
that any log events older than this setting are automatically deleted.
The CloudWatch Logs agent makes it easy to quickly send both rotated
and non-rotated log data off of a host and into the log service. You
can then access the raw log data when you need it.

=back


=head1 METHODS

=head2 CancelExportTask(TaskId => Str)

Each argument is described in detail in: L<Paws::CloudWatchLogs::CancelExportTask>

Returns: nothing

  Cancels an export task if it is in C<PENDING> or C<RUNNING> state.


=head2 CreateExportTask(Destination => Str, From => Int, LogGroupName => Str, To => Int, [DestinationPrefix => Str, LogStreamNamePrefix => Str, TaskName => Str])

Each argument is described in detail in: L<Paws::CloudWatchLogs::CreateExportTask>

Returns: a L<Paws::CloudWatchLogs::CreateExportTaskResponse> instance

  Creates an C<ExportTask> which allows you to efficiently export data
from a Log Group to your Amazon S3 bucket.

This is an asynchronous call. If all the required information is
provided, this API will initiate an export task and respond with the
task Id. Once started, C<DescribeExportTasks> can be used to get the
status of an export task. You can only have one active (C<RUNNING> or
C<PENDING>) export task at a time, per account.

You can export logs from multiple log groups or multiple time ranges to
the same Amazon S3 bucket. To separate out log data for each export
task, you can specify a prefix that will be used as the Amazon S3 key
prefix for all exported objects.


=head2 CreateLogGroup(LogGroupName => Str)

Each argument is described in detail in: L<Paws::CloudWatchLogs::CreateLogGroup>

Returns: nothing

  Creates a new log group with the specified name. The name of the log
group must be unique within a region for an AWS account. You can create
up to 500 log groups per account.

You must use the following guidelines when naming a log group:

=over

=item *

Log group names can be between 1 and 512 characters long.

=item *

Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (hyphen),
'/' (forward slash), and '.' (period).

=back



=head2 CreateLogStream(LogGroupName => Str, LogStreamName => Str)

Each argument is described in detail in: L<Paws::CloudWatchLogs::CreateLogStream>

Returns: nothing

  Creates a new log stream in the specified log group. The name of the
log stream must be unique within the log group. There is no limit on
the number of log streams that can exist in a log group.

You must use the following guidelines when naming a log stream:

=over

=item *

Log stream names can be between 1 and 512 characters long.

=item *

The ':' colon character is not allowed.

=back



=head2 DeleteDestination(DestinationName => Str)

Each argument is described in detail in: L<Paws::CloudWatchLogs::DeleteDestination>

Returns: nothing

  Deletes the destination with the specified name and eventually disables
all the subscription filters that publish to it. This will not delete
the physical resource encapsulated by the destination.


=head2 DeleteLogGroup(LogGroupName => Str)

Each argument is described in detail in: L<Paws::CloudWatchLogs::DeleteLogGroup>

Returns: nothing

  Deletes the log group with the specified name and permanently deletes
all the archived log events associated with it.


=head2 DeleteLogStream(LogGroupName => Str, LogStreamName => Str)

Each argument is described in detail in: L<Paws::CloudWatchLogs::DeleteLogStream>

Returns: nothing

  Deletes a log stream and permanently deletes all the archived log
events associated with it.


=head2 DeleteMetricFilter(FilterName => Str, LogGroupName => Str)

Each argument is described in detail in: L<Paws::CloudWatchLogs::DeleteMetricFilter>

Returns: nothing

  Deletes a metric filter associated with the specified log group.


=head2 DeleteRetentionPolicy(LogGroupName => Str)

Each argument is described in detail in: L<Paws::CloudWatchLogs::DeleteRetentionPolicy>

Returns: nothing

  Deletes the retention policy of the specified log group. Log events
would not expire if they belong to log groups without a retention
policy.


=head2 DeleteSubscriptionFilter(FilterName => Str, LogGroupName => Str)

Each argument is described in detail in: L<Paws::CloudWatchLogs::DeleteSubscriptionFilter>

Returns: nothing

  Deletes a subscription filter associated with the specified log group.


=head2 DescribeDestinations([DestinationNamePrefix => Str, Limit => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::CloudWatchLogs::DescribeDestinations>

Returns: a L<Paws::CloudWatchLogs::DescribeDestinationsResponse> instance

  Returns all the destinations that are associated with the AWS account
making the request. The list returned in the response is ASCII-sorted
by destination name.

By default, this operation returns up to 50 destinations. If there are
more destinations to list, the response would contain a C<nextToken>
value in the response body. You can also limit the number of
destinations returned in the response by specifying the C<limit>
parameter in the request.


=head2 DescribeExportTasks([Limit => Int, NextToken => Str, StatusCode => Str, TaskId => Str])

Each argument is described in detail in: L<Paws::CloudWatchLogs::DescribeExportTasks>

Returns: a L<Paws::CloudWatchLogs::DescribeExportTasksResponse> instance

  Returns all the export tasks that are associated with the AWS account
making the request. The export tasks can be filtered based on C<TaskId>
or C<TaskStatus>.

By default, this operation returns up to 50 export tasks that satisfy
the specified filters. If there are more export tasks to list, the
response would contain a C<nextToken> value in the response body. You
can also limit the number of export tasks returned in the response by
specifying the C<limit> parameter in the request.


=head2 DescribeLogGroups([Limit => Int, LogGroupNamePrefix => Str, NextToken => Str])

Each argument is described in detail in: L<Paws::CloudWatchLogs::DescribeLogGroups>

Returns: a L<Paws::CloudWatchLogs::DescribeLogGroupsResponse> instance

  Returns all the log groups that are associated with the AWS account
making the request. The list returned in the response is ASCII-sorted
by log group name.

By default, this operation returns up to 50 log groups. If there are
more log groups to list, the response would contain a C<nextToken>
value in the response body. You can also limit the number of log groups
returned in the response by specifying the C<limit> parameter in the
request.


=head2 DescribeLogStreams(LogGroupName => Str, [Descending => Bool, Limit => Int, LogStreamNamePrefix => Str, NextToken => Str, OrderBy => Str])

Each argument is described in detail in: L<Paws::CloudWatchLogs::DescribeLogStreams>

Returns: a L<Paws::CloudWatchLogs::DescribeLogStreamsResponse> instance

  Returns all the log streams that are associated with the specified log
group. The list returned in the response is ASCII-sorted by log stream
name.

By default, this operation returns up to 50 log streams. If there are
more log streams to list, the response would contain a C<nextToken>
value in the response body. You can also limit the number of log
streams returned in the response by specifying the C<limit> parameter
in the request. This operation has a limit of five transactions per
second, after which transactions are throttled.


=head2 DescribeMetricFilters(LogGroupName => Str, [FilterNamePrefix => Str, Limit => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::CloudWatchLogs::DescribeMetricFilters>

Returns: a L<Paws::CloudWatchLogs::DescribeMetricFiltersResponse> instance

  Returns all the metrics filters associated with the specified log
group. The list returned in the response is ASCII-sorted by filter
name.

By default, this operation returns up to 50 metric filters. If there
are more metric filters to list, the response would contain a
C<nextToken> value in the response body. You can also limit the number
of metric filters returned in the response by specifying the C<limit>
parameter in the request.


=head2 DescribeSubscriptionFilters(LogGroupName => Str, [FilterNamePrefix => Str, Limit => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::CloudWatchLogs::DescribeSubscriptionFilters>

Returns: a L<Paws::CloudWatchLogs::DescribeSubscriptionFiltersResponse> instance

  Returns all the subscription filters associated with the specified log
group. The list returned in the response is ASCII-sorted by filter
name.

By default, this operation returns up to 50 subscription filters. If
there are more subscription filters to list, the response would contain
a C<nextToken> value in the response body. You can also limit the
number of subscription filters returned in the response by specifying
the C<limit> parameter in the request.


=head2 FilterLogEvents(LogGroupName => Str, [EndTime => Int, FilterPattern => Str, Interleaved => Bool, Limit => Int, LogStreamNames => ArrayRef[Str], NextToken => Str, StartTime => Int])

Each argument is described in detail in: L<Paws::CloudWatchLogs::FilterLogEvents>

Returns: a L<Paws::CloudWatchLogs::FilterLogEventsResponse> instance

  Retrieves log events, optionally filtered by a filter pattern from the
specified log group. You can provide an optional time range to filter
the results on the event C<timestamp>. You can limit the streams
searched to an explicit list of C<logStreamNames>.

By default, this operation returns as much matching log events as can
fit in a response size of 1MB, up to 10,000 log events, or all the
events found within a time-bounded scan window. If the response
includes a C<nextToken>, then there is more data to search, and the
search can be resumed with a new request providing the nextToken. The
response will contain a list of C<searchedLogStreams> that contains
information about which streams were searched in the request and
whether they have been searched completely or require further
pagination. The C<limit> parameter in the request can be used to
specify the maximum number of events to return in a page.


=head2 GetLogEvents(LogGroupName => Str, LogStreamName => Str, [EndTime => Int, Limit => Int, NextToken => Str, StartFromHead => Bool, StartTime => Int])

Each argument is described in detail in: L<Paws::CloudWatchLogs::GetLogEvents>

Returns: a L<Paws::CloudWatchLogs::GetLogEventsResponse> instance

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


=head2 PutDestination(DestinationName => Str, RoleArn => Str, TargetArn => Str)

Each argument is described in detail in: L<Paws::CloudWatchLogs::PutDestination>

Returns: a L<Paws::CloudWatchLogs::PutDestinationResponse> instance

  Creates or updates a C<Destination>. A destination encapsulates a
physical resource (such as a Kinesis stream) and allows you to
subscribe to a real-time stream of log events of a different account,
ingested through C<PutLogEvents> requests. Currently, the only
supported physical resource is a Amazon Kinesis stream belonging to the
same account as the destination.

A destination controls what is written to its Amazon Kinesis stream
through an access policy. By default, PutDestination does not set any
access policy with the destination, which means a cross-account user
will not be able to call C<PutSubscriptionFilter> against this
destination. To enable that, the destination owner must call
C<PutDestinationPolicy> after PutDestination.


=head2 PutDestinationPolicy(AccessPolicy => Str, DestinationName => Str)

Each argument is described in detail in: L<Paws::CloudWatchLogs::PutDestinationPolicy>

Returns: nothing

  Creates or updates an access policy associated with an existing
C<Destination>. An access policy is an IAM policy document that is used
to authorize claims to register a subscription filter against a given
destination.


=head2 PutLogEvents(LogEvents => ArrayRef[L<Paws::CloudWatchLogs::InputLogEvent>], LogGroupName => Str, LogStreamName => Str, [SequenceToken => Str])

Each argument is described in detail in: L<Paws::CloudWatchLogs::PutLogEvents>

Returns: a L<Paws::CloudWatchLogs::PutLogEventsResponse> instance

  Uploads a batch of log events to the specified log stream.

Every PutLogEvents request must include the C<sequenceToken> obtained
from the response of the previous request. An upload in a newly created
log stream does not require a C<sequenceToken>. You can also get the
C<sequenceToken> using DescribeLogStreams.

The batch of events must satisfy the following constraints:

=over

=item *

The maximum batch size is 1,048,576 bytes, and this size is calculated
as the sum of all event messages in UTF-8, plus 26 bytes for each log
event.

=item *

None of the log events in the batch can be more than 2 hours in the
future.

=item *

None of the log events in the batch can be older than 14 days or the
retention period of the log group.

=item *

The log events in the batch must be in chronological ordered by their
C<timestamp>.

=item *

The maximum number of log events in a batch is 10,000.

=item *

A batch of log events in a single PutLogEvents request cannot span more
than 24 hours. Otherwise, the PutLogEvents operation will fail.

=back



=head2 PutMetricFilter(FilterName => Str, FilterPattern => Str, LogGroupName => Str, MetricTransformations => ArrayRef[L<Paws::CloudWatchLogs::MetricTransformation>])

Each argument is described in detail in: L<Paws::CloudWatchLogs::PutMetricFilter>

Returns: nothing

  Creates or updates a metric filter and associates it with the specified
log group. Metric filters allow you to configure rules to extract
metric data from log events ingested through C<PutLogEvents> requests.

The maximum number of metric filters that can be associated with a log
group is 100.


=head2 PutRetentionPolicy(LogGroupName => Str, RetentionInDays => Int)

Each argument is described in detail in: L<Paws::CloudWatchLogs::PutRetentionPolicy>

Returns: nothing

  Sets the retention of the specified log group. A retention policy
allows you to configure the number of days you want to retain log
events in the specified log group.


=head2 PutSubscriptionFilter(DestinationArn => Str, FilterName => Str, FilterPattern => Str, LogGroupName => Str, [RoleArn => Str])

Each argument is described in detail in: L<Paws::CloudWatchLogs::PutSubscriptionFilter>

Returns: nothing

  Creates or updates a subscription filter and associates it with the
specified log group. Subscription filters allow you to subscribe to a
real-time stream of log events ingested through C<PutLogEvents>
requests and have them delivered to a specific destination. Currently,
the supported destinations are:

=over

=item *

An Amazon Kinesis stream belonging to the same account as the
subscription filter, for same-account delivery.

=item *

A logical destination (used via an ARN of C<Destination>) belonging to
a different account, for cross-account delivery.

=item *

An Amazon Kinesis Firehose stream belonging to the same account as the
subscription filter, for same-account delivery.

=item *

An AWS Lambda function belonging to the same account as the
subscription filter, for same-account delivery.

=back

Currently there can only be one subscription filter associated with a
log group.


=head2 TestMetricFilter(FilterPattern => Str, LogEventMessages => ArrayRef[Str])

Each argument is described in detail in: L<Paws::CloudWatchLogs::TestMetricFilter>

Returns: a L<Paws::CloudWatchLogs::TestMetricFilterResponse> instance

  Tests the filter pattern of a metric filter against a sample of log
event messages. You can use this operation to validate the correctness
of a metric filter pattern.


=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

