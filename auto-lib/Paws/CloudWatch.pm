package Paws::CloudWatch;
  use Moose;
  sub service { 'monitoring' }
  sub signing_name { 'monitoring' }
  sub version { '2010-08-01' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::QueryCaller';

  
  sub DeleteAlarms {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatch::DeleteAlarms', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDashboards {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatch::DeleteDashboards', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAlarmHistory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatch::DescribeAlarmHistory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAlarms {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatch::DescribeAlarms', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAlarmsForMetric {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatch::DescribeAlarmsForMetric', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableAlarmActions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatch::DisableAlarmActions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableAlarmActions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatch::EnableAlarmActions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDashboard {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatch::GetDashboard', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMetricData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatch::GetMetricData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMetricStatistics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatch::GetMetricStatistics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMetricWidgetImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatch::GetMetricWidgetImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDashboards {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatch::ListDashboards', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMetrics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatch::ListMetrics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutDashboard {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatch::PutDashboard', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutMetricAlarm {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatch::PutMetricAlarm', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutMetricData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatch::PutMetricData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetAlarmState {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatch::SetAlarmState', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllAlarmHistory {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeAlarmHistory(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeAlarmHistory(@_, NextToken => $next_result->NextToken);
        push @{ $result->AlarmHistoryItems }, @{ $next_result->AlarmHistoryItems };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AlarmHistoryItems') foreach (@{ $result->AlarmHistoryItems });
        $result = $self->DescribeAlarmHistory(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AlarmHistoryItems') foreach (@{ $result->AlarmHistoryItems });
    }

    return undef
  }
  sub DescribeAllAlarms {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeAlarms(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeAlarms(@_, NextToken => $next_result->NextToken);
        push @{ $result->MetricAlarms }, @{ $next_result->MetricAlarms };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'MetricAlarms') foreach (@{ $result->MetricAlarms });
        $result = $self->DescribeAlarms(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'MetricAlarms') foreach (@{ $result->MetricAlarms });
    }

    return undef
  }
  sub GetAllMetricData {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetMetricData(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetMetricData(@_, NextToken => $next_result->NextToken);
        push @{ $result->MetricDataResults }, @{ $next_result->MetricDataResults };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'MetricDataResults') foreach (@{ $result->MetricDataResults });
        $result = $self->GetMetricData(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'MetricDataResults') foreach (@{ $result->MetricDataResults });
    }

    return undef
  }
  sub ListAllDashboards {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDashboards(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDashboards(@_, NextToken => $next_result->NextToken);
        push @{ $result->DashboardEntries }, @{ $next_result->DashboardEntries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DashboardEntries') foreach (@{ $result->DashboardEntries });
        $result = $self->ListDashboards(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DashboardEntries') foreach (@{ $result->DashboardEntries });
    }

    return undef
  }
  sub ListAllMetrics {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListMetrics(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListMetrics(@_, NextToken => $next_result->NextToken);
        push @{ $result->Metrics }, @{ $next_result->Metrics };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Metrics') foreach (@{ $result->Metrics });
        $result = $self->ListMetrics(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Metrics') foreach (@{ $result->Metrics });
    }

    return undef
  }


  sub operations { qw/DeleteAlarms DeleteDashboards DescribeAlarmHistory DescribeAlarms DescribeAlarmsForMetric DisableAlarmActions EnableAlarmActions GetDashboard GetMetricData GetMetricStatistics GetMetricWidgetImage ListDashboards ListMetrics PutDashboard PutMetricAlarm PutMetricData SetAlarmState / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch - Perl Interface to AWS Amazon CloudWatch

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('CloudWatch');
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

Amazon CloudWatch monitors your Amazon Web Services (AWS) resources and
the applications you run on AWS in real time. You can use CloudWatch to
collect and track metrics, which are the variables you want to measure
for your resources and applications.

CloudWatch alarms send notifications or automatically change the
resources you are monitoring based on rules that you define. For
example, you can monitor the CPU usage and disk reads and writes of
your Amazon EC2 instances. Then, use this data to determine whether you
should launch additional instances to handle increased load. You can
also use this data to stop under-used instances to save money.

In addition to monitoring the built-in metrics that come with AWS, you
can monitor your own custom metrics. With CloudWatch, you gain
system-wide visibility into resource utilization, application
performance, and operational health.

For the AWS API documentation, see L<https://docs.aws.amazon.com/cloudwatch/>


=head1 METHODS

=head2 DeleteAlarms

=over

=item AlarmNames => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CloudWatch::DeleteAlarms>

Returns: nothing

Deletes the specified alarms. In the event of an error, no alarms are
deleted.


=head2 DeleteDashboards

=over

=item DashboardNames => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CloudWatch::DeleteDashboards>

Returns: a L<Paws::CloudWatch::DeleteDashboardsOutput> instance

Deletes all dashboards that you specify. You may specify up to 100
dashboards to delete. If there is an error during this call, no
dashboards are deleted.


=head2 DescribeAlarmHistory

=over

=item [AlarmName => Str]

=item [EndDate => Str]

=item [HistoryItemType => Str]

=item [MaxRecords => Int]

=item [NextToken => Str]

=item [StartDate => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatch::DescribeAlarmHistory>

Returns: a L<Paws::CloudWatch::DescribeAlarmHistoryOutput> instance

Retrieves the history for the specified alarm. You can filter the
results by date range or item type. If an alarm name is not specified,
the histories for all alarms are returned.

CloudWatch retains the history of an alarm even if you delete the
alarm.


=head2 DescribeAlarms

=over

=item [ActionPrefix => Str]

=item [AlarmNamePrefix => Str]

=item [AlarmNames => ArrayRef[Str|Undef]]

=item [MaxRecords => Int]

=item [NextToken => Str]

=item [StateValue => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatch::DescribeAlarms>

Returns: a L<Paws::CloudWatch::DescribeAlarmsOutput> instance

Retrieves the specified alarms. If no alarms are specified, all alarms
are returned. Alarms can be retrieved by using only a prefix for the
alarm name, the alarm state, or a prefix for any action.


=head2 DescribeAlarmsForMetric

=over

=item MetricName => Str

=item Namespace => Str

=item [Dimensions => ArrayRef[L<Paws::CloudWatch::Dimension>]]

=item [ExtendedStatistic => Str]

=item [Period => Int]

=item [Statistic => Str]

=item [Unit => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatch::DescribeAlarmsForMetric>

Returns: a L<Paws::CloudWatch::DescribeAlarmsForMetricOutput> instance

Retrieves the alarms for the specified metric. To filter the results,
specify a statistic, period, or unit.


=head2 DisableAlarmActions

=over

=item AlarmNames => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CloudWatch::DisableAlarmActions>

Returns: nothing

Disables the actions for the specified alarms. When an alarm's actions
are disabled, the alarm actions do not execute when the alarm state
changes.


=head2 EnableAlarmActions

=over

=item AlarmNames => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CloudWatch::EnableAlarmActions>

Returns: nothing

Enables the actions for the specified alarms.


=head2 GetDashboard

=over

=item DashboardName => Str


=back

Each argument is described in detail in: L<Paws::CloudWatch::GetDashboard>

Returns: a L<Paws::CloudWatch::GetDashboardOutput> instance

Displays the details of the dashboard that you specify.

To copy an existing dashboard, use C<GetDashboard>, and then use the
data returned within C<DashboardBody> as the template for the new
dashboard when you call C<PutDashboard> to create the copy.


=head2 GetMetricData

=over

=item EndTime => Str

=item MetricDataQueries => ArrayRef[L<Paws::CloudWatch::MetricDataQuery>]

=item StartTime => Str

=item [MaxDatapoints => Int]

=item [NextToken => Str]

=item [ScanBy => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatch::GetMetricData>

Returns: a L<Paws::CloudWatch::GetMetricDataOutput> instance

You can use the C<GetMetricData> API to retrieve as many as 100
different metrics in a single request, with a total of as many as
100,800 datapoints. You can also optionally perform math expressions on
the values of the returned statistics, to create new time series that
represent new insights into your data. For example, using Lambda
metrics, you could divide the Errors metric by the Invocations metric
to get an error rate time series. For more information about metric
math expressions, see Metric Math Syntax and Functions
(http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/using-metric-math.html#metric-math-syntax)
in the I<Amazon CloudWatch User Guide>.

Calls to the C<GetMetricData> API have a different pricing structure
than calls to C<GetMetricStatistics>. For more information about
pricing, see Amazon CloudWatch Pricing
(https://aws.amazon.com/cloudwatch/pricing/).

Amazon CloudWatch retains metric data as follows:

=over

=item *

Data points with a period of less than 60 seconds are available for 3
hours. These data points are high-resolution metrics and are available
only for custom metrics that have been defined with a
C<StorageResolution> of 1.

=item *

Data points with a period of 60 seconds (1-minute) are available for 15
days.

=item *

Data points with a period of 300 seconds (5-minute) are available for
63 days.

=item *

Data points with a period of 3600 seconds (1 hour) are available for
455 days (15 months).

=back

Data points that are initially published with a shorter period are
aggregated together for long-term storage. For example, if you collect
data using a period of 1 minute, the data remains available for 15 days
with 1-minute resolution. After 15 days, this data is still available,
but is aggregated and retrievable only with a resolution of 5 minutes.
After 63 days, the data is further aggregated and is available with a
resolution of 1 hour.


=head2 GetMetricStatistics

=over

=item EndTime => Str

=item MetricName => Str

=item Namespace => Str

=item Period => Int

=item StartTime => Str

=item [Dimensions => ArrayRef[L<Paws::CloudWatch::Dimension>]]

=item [ExtendedStatistics => ArrayRef[Str|Undef]]

=item [Statistics => ArrayRef[Str|Undef]]

=item [Unit => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatch::GetMetricStatistics>

Returns: a L<Paws::CloudWatch::GetMetricStatisticsOutput> instance

Gets statistics for the specified metric.

The maximum number of data points returned from a single call is 1,440.
If you request more than 1,440 data points, CloudWatch returns an
error. To reduce the number of data points, you can narrow the
specified time range and make multiple requests across adjacent time
ranges, or you can increase the specified period. Data points are not
returned in chronological order.

CloudWatch aggregates data points based on the length of the period
that you specify. For example, if you request statistics with a
one-hour period, CloudWatch aggregates all data points with time stamps
that fall within each one-hour period. Therefore, the number of values
aggregated by CloudWatch is larger than the number of data points
returned.

CloudWatch needs raw data points to calculate percentile statistics. If
you publish data using a statistic set instead, you can only retrieve
percentile statistics for this data if one of the following conditions
is true:

=over

=item *

The SampleCount value of the statistic set is 1.

=item *

The Min and the Max values of the statistic set are equal.

=back

Percentile statistics are not available for metrics when any of the
metric values are negative numbers.

Amazon CloudWatch retains metric data as follows:

=over

=item *

Data points with a period of less than 60 seconds are available for 3
hours. These data points are high-resolution metrics and are available
only for custom metrics that have been defined with a
C<StorageResolution> of 1.

=item *

Data points with a period of 60 seconds (1-minute) are available for 15
days.

=item *

Data points with a period of 300 seconds (5-minute) are available for
63 days.

=item *

Data points with a period of 3600 seconds (1 hour) are available for
455 days (15 months).

=back

Data points that are initially published with a shorter period are
aggregated together for long-term storage. For example, if you collect
data using a period of 1 minute, the data remains available for 15 days
with 1-minute resolution. After 15 days, this data is still available,
but is aggregated and retrievable only with a resolution of 5 minutes.
After 63 days, the data is further aggregated and is available with a
resolution of 1 hour.

CloudWatch started retaining 5-minute and 1-hour metric data as of July
9, 2016.

For information about metrics and dimensions supported by AWS services,
see the Amazon CloudWatch Metrics and Dimensions Reference
(http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CW_Support_For_AWS.html)
in the I<Amazon CloudWatch User Guide>.


=head2 GetMetricWidgetImage

=over

=item MetricWidget => Str

=item [OutputFormat => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatch::GetMetricWidgetImage>

Returns: a L<Paws::CloudWatch::GetMetricWidgetImageOutput> instance

You can use the C<GetMetricWidgetImage> API to retrieve a snapshot
graph of one or more Amazon CloudWatch metrics as a bitmap image. You
can then embed this image into your services and products, such as wiki
pages, reports, and documents. You could also retrieve images
regularly, such as every minute, and create your own custom live
dashboard.

The graph you retrieve can include all CloudWatch metric graph
features, including metric math and horizontal and vertical
annotations.

There is a limit of 20 transactions per second for this API. Each
C<GetMetricWidgetImage> action has the following limits:

=over

=item *

As many as 100 metrics in the graph.

=item *

Up to 100 KB uncompressed payload.

=back



=head2 ListDashboards

=over

=item [DashboardNamePrefix => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatch::ListDashboards>

Returns: a L<Paws::CloudWatch::ListDashboardsOutput> instance

Returns a list of the dashboards for your account. If you include
C<DashboardNamePrefix>, only those dashboards with names starting with
the prefix are listed. Otherwise, all dashboards in your account are
listed.

C<ListDashboards> returns up to 1000 results on one page. If there are
more than 1000 dashboards, you can call C<ListDashboards> again and
include the value you received for C<NextToken> in the first call, to
receive the next 1000 results.


=head2 ListMetrics

=over

=item [Dimensions => ArrayRef[L<Paws::CloudWatch::DimensionFilter>]]

=item [MetricName => Str]

=item [Namespace => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatch::ListMetrics>

Returns: a L<Paws::CloudWatch::ListMetricsOutput> instance

List the specified metrics. You can use the returned metrics with
GetMetricData or GetMetricStatistics to obtain statistical data.

Up to 500 results are returned for any one call. To retrieve additional
results, use the returned token with subsequent calls.

After you create a metric, allow up to fifteen minutes before the
metric appears. Statistics about the metric, however, are available
sooner using GetMetricData or GetMetricStatistics.


=head2 PutDashboard

=over

=item DashboardBody => Str

=item DashboardName => Str


=back

Each argument is described in detail in: L<Paws::CloudWatch::PutDashboard>

Returns: a L<Paws::CloudWatch::PutDashboardOutput> instance

Creates a dashboard if it does not already exist, or updates an
existing dashboard. If you update a dashboard, the entire contents are
replaced with what you specify here.

There is no limit to the number of dashboards in your account. All
dashboards in your account are global, not region-specific.

A simple way to create a dashboard using C<PutDashboard> is to copy an
existing dashboard. To copy an existing dashboard using the console,
you can load the dashboard and then use the View/edit source command in
the Actions menu to display the JSON block for that dashboard. Another
way to copy a dashboard is to use C<GetDashboard>, and then use the
data returned within C<DashboardBody> as the template for the new
dashboard when you call C<PutDashboard>.

When you create a dashboard with C<PutDashboard>, a good practice is to
add a text widget at the top of the dashboard with a message that the
dashboard was created by script and should not be changed in the
console. This message could also point console users to the location of
the C<DashboardBody> script or the CloudFormation template used to
create the dashboard.


=head2 PutMetricAlarm

=over

=item AlarmName => Str

=item ComparisonOperator => Str

=item EvaluationPeriods => Int

=item Threshold => Num

=item [ActionsEnabled => Bool]

=item [AlarmActions => ArrayRef[Str|Undef]]

=item [AlarmDescription => Str]

=item [DatapointsToAlarm => Int]

=item [Dimensions => ArrayRef[L<Paws::CloudWatch::Dimension>]]

=item [EvaluateLowSampleCountPercentile => Str]

=item [ExtendedStatistic => Str]

=item [InsufficientDataActions => ArrayRef[Str|Undef]]

=item [MetricName => Str]

=item [Metrics => ArrayRef[L<Paws::CloudWatch::MetricDataQuery>]]

=item [Namespace => Str]

=item [OKActions => ArrayRef[Str|Undef]]

=item [Period => Int]

=item [Statistic => Str]

=item [TreatMissingData => Str]

=item [Unit => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatch::PutMetricAlarm>

Returns: nothing

Creates or updates an alarm and associates it with the specified metric
or metric math expression.

When this operation creates an alarm, the alarm state is immediately
set to C<INSUFFICIENT_DATA>. The alarm is then evaluated and its state
is set appropriately. Any actions associated with the new state are
then executed.

When you update an existing alarm, its state is left unchanged, but the
update completely overwrites the previous configuration of the alarm.

If you are an IAM user, you must have Amazon EC2 permissions for some
alarm operations:

=over

=item *

C<iam:CreateServiceLinkedRole> for all alarms with EC2 actions

=item *

C<ec2:DescribeInstanceStatus> and C<ec2:DescribeInstances> for all
alarms on EC2 instance status metrics

=item *

C<ec2:StopInstances> for alarms with stop actions

=item *

C<ec2:TerminateInstances> for alarms with terminate actions

=item *

C<ec2:DescribeInstanceRecoveryAttribute> and C<ec2:RecoverInstances>
for alarms with recover actions

=back

If you have read/write permissions for Amazon CloudWatch but not for
Amazon EC2, you can still create an alarm, but the stop or terminate
actions are not performed. However, if you are later granted the
required permissions, the alarm actions that you created earlier are
performed.

If you are using an IAM role (for example, an EC2 instance profile),
you cannot stop or terminate the instance using alarm actions. However,
you can still see the alarm state and perform any other actions such as
Amazon SNS notifications or Auto Scaling policies.

If you are using temporary security credentials granted using AWS STS,
you cannot stop or terminate an EC2 instance using alarm actions.

The first time you create an alarm in the AWS Management Console, the
CLI, or by using the PutMetricAlarm API, CloudWatch creates the
necessary service-linked role for you. The service-linked role is
called C<AWSServiceRoleForCloudWatchEvents>. For more information, see
AWS service-linked role
(http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_terms-and-concepts.html#iam-term-service-linked-role).


=head2 PutMetricData

=over

=item MetricData => ArrayRef[L<Paws::CloudWatch::MetricDatum>]

=item Namespace => Str


=back

Each argument is described in detail in: L<Paws::CloudWatch::PutMetricData>

Returns: nothing

Publishes metric data points to Amazon CloudWatch. CloudWatch
associates the data points with the specified metric. If the specified
metric does not exist, CloudWatch creates the metric. When CloudWatch
creates a metric, it can take up to fifteen minutes for the metric to
appear in calls to ListMetrics.

You can publish either individual data points in the C<Value> field, or
arrays of values and the number of times each value occurred during the
period by using the C<Values> and C<Counts> fields in the
C<MetricDatum> structure. Using the C<Values> and C<Counts> method
enables you to publish up to 150 values per metric with one
C<PutMetricData> request, and supports retrieving percentile statistics
on this data.

Each C<PutMetricData> request is limited to 40 KB in size for HTTP POST
requests. You can send a payload compressed by gzip. Each request is
also limited to no more than 20 different metrics.

Although the C<Value> parameter accepts numbers of type C<Double>,
CloudWatch rejects values that are either too small or too large.
Values must be in the range of 8.515920e-109 to 1.174271e+108 (Base 10)
or 2e-360 to 2e360 (Base 2). In addition, special values (for example,
NaN, +Infinity, -Infinity) are not supported.

You can use up to 10 dimensions per metric to further clarify what data
the metric collects. For more information about specifying dimensions,
see Publishing Metrics
(http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html)
in the I<Amazon CloudWatch User Guide>.

Data points with time stamps from 24 hours ago or longer can take at
least 48 hours to become available for GetMetricData or
GetMetricStatistics from the time they are submitted.

CloudWatch needs raw data points to calculate percentile statistics. If
you publish data using a statistic set instead, you can only retrieve
percentile statistics for this data if one of the following conditions
is true:

=over

=item *

The C<SampleCount> value of the statistic set is 1 and C<Min>, C<Max>,
and C<Sum> are all equal.

=item *

The C<Min> and C<Max> are equal, and C<Sum> is equal to C<Min>
multiplied by C<SampleCount>.

=back



=head2 SetAlarmState

=over

=item AlarmName => Str

=item StateReason => Str

=item StateValue => Str

=item [StateReasonData => Str]


=back

Each argument is described in detail in: L<Paws::CloudWatch::SetAlarmState>

Returns: nothing

Temporarily sets the state of an alarm for testing purposes. When the
updated state differs from the previous value, the action configured
for the appropriate state is invoked. For example, if your alarm is
configured to send an Amazon SNS message when an alarm is triggered,
temporarily changing the alarm state to C<ALARM> sends an SNS message.
The alarm returns to its actual state (often within seconds). Because
the alarm state change happens quickly, it is typically only visible in
the alarm's B<History> tab in the Amazon CloudWatch console or through
DescribeAlarmHistory.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllAlarmHistory(sub { },[AlarmName => Str, EndDate => Str, HistoryItemType => Str, MaxRecords => Int, NextToken => Str, StartDate => Str])

=head2 DescribeAllAlarmHistory([AlarmName => Str, EndDate => Str, HistoryItemType => Str, MaxRecords => Int, NextToken => Str, StartDate => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AlarmHistoryItems, passing the object as the first parameter, and the string 'AlarmHistoryItems' as the second parameter 

If not, it will return a a L<Paws::CloudWatch::DescribeAlarmHistoryOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllAlarms(sub { },[ActionPrefix => Str, AlarmNamePrefix => Str, AlarmNames => ArrayRef[Str|Undef], MaxRecords => Int, NextToken => Str, StateValue => Str])

=head2 DescribeAllAlarms([ActionPrefix => Str, AlarmNamePrefix => Str, AlarmNames => ArrayRef[Str|Undef], MaxRecords => Int, NextToken => Str, StateValue => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - MetricAlarms, passing the object as the first parameter, and the string 'MetricAlarms' as the second parameter 

If not, it will return a a L<Paws::CloudWatch::DescribeAlarmsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllMetricData(sub { },EndTime => Str, MetricDataQueries => ArrayRef[L<Paws::CloudWatch::MetricDataQuery>], StartTime => Str, [MaxDatapoints => Int, NextToken => Str, ScanBy => Str])

=head2 GetAllMetricData(EndTime => Str, MetricDataQueries => ArrayRef[L<Paws::CloudWatch::MetricDataQuery>], StartTime => Str, [MaxDatapoints => Int, NextToken => Str, ScanBy => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - MetricDataResults, passing the object as the first parameter, and the string 'MetricDataResults' as the second parameter 

If not, it will return a a L<Paws::CloudWatch::GetMetricDataOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDashboards(sub { },[DashboardNamePrefix => Str, NextToken => Str])

=head2 ListAllDashboards([DashboardNamePrefix => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DashboardEntries, passing the object as the first parameter, and the string 'DashboardEntries' as the second parameter 

If not, it will return a a L<Paws::CloudWatch::ListDashboardsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllMetrics(sub { },[Dimensions => ArrayRef[L<Paws::CloudWatch::DimensionFilter>], MetricName => Str, Namespace => Str, NextToken => Str])

=head2 ListAllMetrics([Dimensions => ArrayRef[L<Paws::CloudWatch::DimensionFilter>], MetricName => Str, Namespace => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Metrics, passing the object as the first parameter, and the string 'Metrics' as the second parameter 

If not, it will return a a L<Paws::CloudWatch::ListMetricsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

