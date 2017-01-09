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
  sub ListTagsLogGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::ListTagsLogGroup', @_);
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
  sub TagLogGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::TagLogGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TestMetricFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::TestMetricFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagLogGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatchLogs::UntagLogGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllDestinations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeDestinations(@_);

    if (not defined $callback) {
      while ($result->nextToken) {
        $result = $self->DescribeDestinations(@_, nextToken => $result->nextToken);
        push @{ $result->destinations }, @{ $result->destinations };
      }
      return $result;
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
      while ($result->nextToken) {
        $result = $self->DescribeLogGroups(@_, nextToken => $result->nextToken);
        push @{ $result->logGroups }, @{ $result->logGroups };
      }
      return $result;
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
      while ($result->nextToken) {
        $result = $self->DescribeLogStreams(@_, nextToken => $result->nextToken);
        push @{ $result->logStreams }, @{ $result->logStreams };
      }
      return $result;
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
      while ($result->nextToken) {
        $result = $self->DescribeMetricFilters(@_, nextToken => $result->nextToken);
        push @{ $result->metricFilters }, @{ $result->metricFilters };
      }
      return $result;
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
      while ($result->nextToken) {
        $result = $self->DescribeSubscriptionFilters(@_, nextToken => $result->nextToken);
        push @{ $result->subscriptionFilters }, @{ $result->subscriptionFilters };
      }
      return $result;
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
      while ($result->nextToken) {
        $result = $self->FilterLogEvents(@_, nextToken => $result->nextToken);
        push @{ $result->events }, @{ $result->events };
        push @{ $result->searchedLogStreams }, @{ $result->searchedLogStreams };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $result = $self->FilterLogEvents(@_, nextToken => $result->nextToken);
        $callback->($_ => 'events') foreach (@{ $result->events });
        $callback->($_ => 'searchedLogStreams') foreach (@{ $result->searchedLogStreams });
      }
    }

    return undef
  }


  sub operations { qw/CancelExportTask CreateExportTask CreateLogGroup CreateLogStream DeleteDestination DeleteLogGroup DeleteLogStream DeleteMetricFilter DeleteRetentionPolicy DeleteSubscriptionFilter DescribeDestinations DescribeExportTasks DescribeLogGroups DescribeLogStreams DescribeMetricFilters DescribeSubscriptionFilters FilterLogEvents GetLogEvents ListTagsLogGroup PutDestination PutDestinationPolicy PutLogEvents PutMetricFilter PutRetentionPolicy PutSubscriptionFilter TagLogGroup TestMetricFilter UntagLogGroup / }

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
log files from EC2 instances, Amazon CloudTrail, or other sources. You
can then retrieve the associated log data from CloudWatch Logs using
the Amazon CloudWatch console, the CloudWatch Logs commands in the AWS
CLI, the CloudWatch Logs API, or the CloudWatch Logs SDK.

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

  Cancels the specified export task.

The task must be in the C<PENDING> or C<RUNNING> state.


=head2 CreateExportTask(Destination => Str, From => Int, LogGroupName => Str, To => Int, [DestinationPrefix => Str, LogStreamNamePrefix => Str, TaskName => Str])

Each argument is described in detail in: L<Paws::CloudWatchLogs::CreateExportTask>

Returns: a L<Paws::CloudWatchLogs::CreateExportTaskResponse> instance

  Creates an export task, which allows you to efficiently export data
from a log group to an Amazon S3 bucket.

This is an asynchronous call. If all the required information is
provided, this operation initiates an export task and responds with the
ID of the task. After the task has started, you can use
DescribeExportTasks to get the status of the export task. Each account
can only have one active (C<RUNNING> or C<PENDING>) export task at a
time. To cancel an export task, use CancelExportTask.

You can export logs from multiple log groups or multiple time ranges to
the same S3 bucket. To separate out log data for each export task, you
can specify a prefix that will be used as the Amazon S3 key prefix for
all exported objects.


=head2 CreateLogGroup(LogGroupName => Str, [Tags => L<Paws::CloudWatchLogs::Tags>])

Each argument is described in detail in: L<Paws::CloudWatchLogs::CreateLogGroup>

Returns: nothing

  Creates a log group with the specified name.

You can create up to 5000 log groups per account.

You must use the following guidelines when naming a log group:

=over

=item *

Log group names must be unique within a region for an AWS account.

=item *

Log group names can be between 1 and 512 characters long.

=item *

Log group names consist of the following characters: a-z, A-Z, 0-9, '_'
(underscore), '-' (hyphen), '/' (forward slash), and '.' (period).

=back



=head2 CreateLogStream(LogGroupName => Str, LogStreamName => Str)

Each argument is described in detail in: L<Paws::CloudWatchLogs::CreateLogStream>

Returns: nothing

  Creates a log stream for the specified log group.

There is no limit on the number of log streams that you can create for
a log group.

You must use the following guidelines when naming a log stream:

=over

=item *

Log stream names must be unique within the log group.

=item *

Log stream names can be between 1 and 512 characters long.

=item *

The ':' (colon) and '*' (asterisk) characters are not allowed.

=back



=head2 DeleteDestination(DestinationName => Str)

Each argument is described in detail in: L<Paws::CloudWatchLogs::DeleteDestination>

Returns: nothing

  Deletes the specified destination, and eventually disables all the
subscription filters that publish to it. This operation does not delete
the physical resource encapsulated by the destination.


=head2 DeleteLogGroup(LogGroupName => Str)

Each argument is described in detail in: L<Paws::CloudWatchLogs::DeleteLogGroup>

Returns: nothing

  Deletes the specified log group and permanently deletes all the
archived log events associated with the log group.


=head2 DeleteLogStream(LogGroupName => Str, LogStreamName => Str)

Each argument is described in detail in: L<Paws::CloudWatchLogs::DeleteLogStream>

Returns: nothing

  Deletes the specified log stream and permanently deletes all the
archived log events associated with the log stream.


=head2 DeleteMetricFilter(FilterName => Str, LogGroupName => Str)

Each argument is described in detail in: L<Paws::CloudWatchLogs::DeleteMetricFilter>

Returns: nothing

  Deletes the specified metric filter.


=head2 DeleteRetentionPolicy(LogGroupName => Str)

Each argument is described in detail in: L<Paws::CloudWatchLogs::DeleteRetentionPolicy>

Returns: nothing

  Deletes the specified retention policy.

Log events do not expire if they belong to log groups without a
retention policy.


=head2 DeleteSubscriptionFilter(FilterName => Str, LogGroupName => Str)

Each argument is described in detail in: L<Paws::CloudWatchLogs::DeleteSubscriptionFilter>

Returns: nothing

  Deletes the specified subscription filter.


=head2 DescribeDestinations([DestinationNamePrefix => Str, Limit => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::CloudWatchLogs::DescribeDestinations>

Returns: a L<Paws::CloudWatchLogs::DescribeDestinationsResponse> instance

  Lists all your destinations. The results are ASCII-sorted by
destination name.


=head2 DescribeExportTasks([Limit => Int, NextToken => Str, StatusCode => Str, TaskId => Str])

Each argument is described in detail in: L<Paws::CloudWatchLogs::DescribeExportTasks>

Returns: a L<Paws::CloudWatchLogs::DescribeExportTasksResponse> instance

  Lists the specified export tasks. You can list all your export tasks or
filter the results based on task ID or task status.


=head2 DescribeLogGroups([Limit => Int, LogGroupNamePrefix => Str, NextToken => Str])

Each argument is described in detail in: L<Paws::CloudWatchLogs::DescribeLogGroups>

Returns: a L<Paws::CloudWatchLogs::DescribeLogGroupsResponse> instance

  Lists the specified log groups. You can list all your log groups or
filter the results by prefix. The results are ASCII-sorted by log group
name.


=head2 DescribeLogStreams(LogGroupName => Str, [Descending => Bool, Limit => Int, LogStreamNamePrefix => Str, NextToken => Str, OrderBy => Str])

Each argument is described in detail in: L<Paws::CloudWatchLogs::DescribeLogStreams>

Returns: a L<Paws::CloudWatchLogs::DescribeLogStreamsResponse> instance

  Lists the log streams for the specified log group. You can list all the
log streams or filter the results by prefix. You can also control how
the results are ordered.

This operation has a limit of five transactions per second, after which
transactions are throttled.


=head2 DescribeMetricFilters([FilterNamePrefix => Str, Limit => Int, LogGroupName => Str, MetricName => Str, MetricNamespace => Str, NextToken => Str])

Each argument is described in detail in: L<Paws::CloudWatchLogs::DescribeMetricFilters>

Returns: a L<Paws::CloudWatchLogs::DescribeMetricFiltersResponse> instance

  Lists the specified metric filters. You can list all the metric filters
or filter the results by log name, prefix, metric name, and metric
namespace. The results are ASCII-sorted by filter name.


=head2 DescribeSubscriptionFilters(LogGroupName => Str, [FilterNamePrefix => Str, Limit => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::CloudWatchLogs::DescribeSubscriptionFilters>

Returns: a L<Paws::CloudWatchLogs::DescribeSubscriptionFiltersResponse> instance

  Lists the subscription filters for the specified log group. You can
list all the subscription filters or filter the results by prefix. The
results are ASCII-sorted by filter name.


=head2 FilterLogEvents(LogGroupName => Str, [EndTime => Int, FilterPattern => Str, Interleaved => Bool, Limit => Int, LogStreamNames => ArrayRef[Str|Undef], NextToken => Str, StartTime => Int])

Each argument is described in detail in: L<Paws::CloudWatchLogs::FilterLogEvents>

Returns: a L<Paws::CloudWatchLogs::FilterLogEventsResponse> instance

  Lists log events from the specified log group. You can list all the log
events or filter the results using a filter pattern, a time range, and
the name of the log stream.

By default, this operation returns as many log events as can fit in 1MB
(up to 10,000 log events), or all the events found within the time
range that you specify. If the results include a token, then there are
more log events available, and you can get additional results by
specifying the token in a subsequent call.


=head2 GetLogEvents(LogGroupName => Str, LogStreamName => Str, [EndTime => Int, Limit => Int, NextToken => Str, StartFromHead => Bool, StartTime => Int])

Each argument is described in detail in: L<Paws::CloudWatchLogs::GetLogEvents>

Returns: a L<Paws::CloudWatchLogs::GetLogEventsResponse> instance

  Lists log events from the specified log stream. You can list all the
log events or filter using a time range.

By default, this operation returns as many log events as can fit in a
response size of 1MB (up to 10,000 log events). If the results include
tokens, there are more log events available. You can get additional log
events by specifying one of the tokens in a subsequent call.


=head2 ListTagsLogGroup(LogGroupName => Str)

Each argument is described in detail in: L<Paws::CloudWatchLogs::ListTagsLogGroup>

Returns: a L<Paws::CloudWatchLogs::ListTagsLogGroupResponse> instance

  Lists the tags for the specified log group.

To add tags, use TagLogGroup. To remove tags, use UntagLogGroup.


=head2 PutDestination(DestinationName => Str, RoleArn => Str, TargetArn => Str)

Each argument is described in detail in: L<Paws::CloudWatchLogs::PutDestination>

Returns: a L<Paws::CloudWatchLogs::PutDestinationResponse> instance

  Creates or updates a destination. A destination encapsulates a physical
resource (such as a Kinesis stream) and enables you to subscribe to a
real-time stream of log events of a different account, ingested using
PutLogEvents. Currently, the only supported physical resource is a
Amazon Kinesis stream belonging to the same account as the destination.

A destination controls what is written to its Amazon Kinesis stream
through an access policy. By default, C<PutDestination> does not set
any access policy with the destination, which means a cross-account
user cannot call PutSubscriptionFilter against this destination. To
enable this, the destination owner must call PutDestinationPolicy after
C<PutDestination>.


=head2 PutDestinationPolicy(AccessPolicy => Str, DestinationName => Str)

Each argument is described in detail in: L<Paws::CloudWatchLogs::PutDestinationPolicy>

Returns: nothing

  Creates or updates an access policy associated with an existing
destination. An access policy is an IAM policy document that is used to
authorize claims to register a subscription filter against a given
destination.


=head2 PutLogEvents(LogEvents => ArrayRef[L<Paws::CloudWatchLogs::InputLogEvent>], LogGroupName => Str, LogStreamName => Str, [SequenceToken => Str])

Each argument is described in detail in: L<Paws::CloudWatchLogs::PutLogEvents>

Returns: a L<Paws::CloudWatchLogs::PutLogEventsResponse> instance

  Uploads a batch of log events to the specified log stream.

You must include the sequence token obtained from the response of the
previous call. An upload in a newly created log stream does not require
a sequence token. You can also get the sequence token using
DescribeLogStreams.

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
timestamp (the time the event occurred, expressed as the number of
milliseconds since Jan 1, 1970 00:00:00 UTC).

=item *

The maximum number of log events in a batch is 10,000.

=item *

A batch of log events in a single request cannot span more than 24
hours. Otherwise, the operation fails.

=back



=head2 PutMetricFilter(FilterName => Str, FilterPattern => Str, LogGroupName => Str, MetricTransformations => ArrayRef[L<Paws::CloudWatchLogs::MetricTransformation>])

Each argument is described in detail in: L<Paws::CloudWatchLogs::PutMetricFilter>

Returns: nothing

  Creates or updates a metric filter and associates it with the specified
log group. Metric filters allow you to configure rules to extract
metric data from log events ingested through PutLogEvents.

The maximum number of metric filters that can be associated with a log
group is 100.


=head2 PutRetentionPolicy(LogGroupName => Str, RetentionInDays => Int)

Each argument is described in detail in: L<Paws::CloudWatchLogs::PutRetentionPolicy>

Returns: nothing

  Sets the retention of the specified log group. A retention policy
allows you to configure the number of days you want to retain log
events in the specified log group.


=head2 PutSubscriptionFilter(DestinationArn => Str, FilterName => Str, FilterPattern => Str, LogGroupName => Str, [Distribution => Str, RoleArn => Str])

Each argument is described in detail in: L<Paws::CloudWatchLogs::PutSubscriptionFilter>

Returns: nothing

  Creates or updates a subscription filter and associates it with the
specified log group. Subscription filters allow you to subscribe to a
real-time stream of log events ingested through PutLogEvents and have
them delivered to a specific destination. Currently, the supported
destinations are:

=over

=item *

An Amazon Kinesis stream belonging to the same account as the
subscription filter, for same-account delivery.

=item *

A logical destination that belongs to a different account, for
cross-account delivery.

=item *

An Amazon Kinesis Firehose stream that belongs to the same account as
the subscription filter, for same-account delivery.

=item *

An AWS Lambda function that belongs to the same account as the
subscription filter, for same-account delivery.

=back

There can only be one subscription filter associated with a log group.


=head2 TagLogGroup(LogGroupName => Str, Tags => L<Paws::CloudWatchLogs::Tags>)

Each argument is described in detail in: L<Paws::CloudWatchLogs::TagLogGroup>

Returns: nothing

  Adds or updates the specified tags for the specified log group.

To list the tags for a log group, use ListTagsLogGroup. To remove tags,
use UntagLogGroup.

For more information about tags, see Tag Log Groups in Amazon
CloudWatch Logs in the I<Amazon CloudWatch Logs User Guide>.


=head2 TestMetricFilter(FilterPattern => Str, LogEventMessages => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::CloudWatchLogs::TestMetricFilter>

Returns: a L<Paws::CloudWatchLogs::TestMetricFilterResponse> instance

  Tests the filter pattern of a metric filter against a sample of log
event messages. You can use this operation to validate the correctness
of a metric filter pattern.


=head2 UntagLogGroup(LogGroupName => Str, Tags => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::CloudWatchLogs::UntagLogGroup>

Returns: nothing

  Removes the specified tags from the specified log group.

To list the tags for a log group, use ListTagsLogGroup. To add tags,
use UntagLogGroup.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllDestinations(sub { },[DestinationNamePrefix => Str, Limit => Int, NextToken => Str])

=head2 DescribeAllDestinations([DestinationNamePrefix => Str, Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - destinations, passing the object as the first parameter, and the string 'destinations' as the second parameter 

If not, it will return a a L<Paws::CloudWatchLogs::DescribeDestinationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllLogGroups(sub { },[Limit => Int, LogGroupNamePrefix => Str, NextToken => Str])

=head2 DescribeAllLogGroups([Limit => Int, LogGroupNamePrefix => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - logGroups, passing the object as the first parameter, and the string 'logGroups' as the second parameter 

If not, it will return a a L<Paws::CloudWatchLogs::DescribeLogGroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllLogStreams(sub { },LogGroupName => Str, [Descending => Bool, Limit => Int, LogStreamNamePrefix => Str, NextToken => Str, OrderBy => Str])

=head2 DescribeAllLogStreams(LogGroupName => Str, [Descending => Bool, Limit => Int, LogStreamNamePrefix => Str, NextToken => Str, OrderBy => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - logStreams, passing the object as the first parameter, and the string 'logStreams' as the second parameter 

If not, it will return a a L<Paws::CloudWatchLogs::DescribeLogStreamsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllMetricFilters(sub { },[FilterNamePrefix => Str, Limit => Int, LogGroupName => Str, MetricName => Str, MetricNamespace => Str, NextToken => Str])

=head2 DescribeAllMetricFilters([FilterNamePrefix => Str, Limit => Int, LogGroupName => Str, MetricName => Str, MetricNamespace => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - metricFilters, passing the object as the first parameter, and the string 'metricFilters' as the second parameter 

If not, it will return a a L<Paws::CloudWatchLogs::DescribeMetricFiltersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllSubscriptionFilters(sub { },LogGroupName => Str, [FilterNamePrefix => Str, Limit => Int, NextToken => Str])

=head2 DescribeAllSubscriptionFilters(LogGroupName => Str, [FilterNamePrefix => Str, Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - subscriptionFilters, passing the object as the first parameter, and the string 'subscriptionFilters' as the second parameter 

If not, it will return a a L<Paws::CloudWatchLogs::DescribeSubscriptionFiltersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 FilterAllLogEvents(sub { },LogGroupName => Str, [EndTime => Int, FilterPattern => Str, Interleaved => Bool, Limit => Int, LogStreamNames => ArrayRef[Str|Undef], NextToken => Str, StartTime => Int])

=head2 FilterAllLogEvents(LogGroupName => Str, [EndTime => Int, FilterPattern => Str, Interleaved => Bool, Limit => Int, LogStreamNames => ArrayRef[Str|Undef], NextToken => Str, StartTime => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - events, passing the object as the first parameter, and the string 'events' as the second parameter 

 - searchedLogStreams, passing the object as the first parameter, and the string 'searchedLogStreams' as the second parameter 

If not, it will return a a L<Paws::CloudWatchLogs::FilterLogEventsResponse> instance with all the C<param>s; andC<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

