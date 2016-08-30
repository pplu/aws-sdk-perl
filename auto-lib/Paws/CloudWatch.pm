package Paws::CloudWatch;
  use Moose;
  sub service { 'monitoring' }
  sub version { '2010-08-01' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::QueryCaller', 'Paws::Net::XMLResponse';

  
  sub DeleteAlarms {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatch::DeleteAlarms', @_);
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
  sub GetMetricStatistics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatch::GetMetricStatistics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMetrics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CloudWatch::ListMetrics', @_);
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

    my $result = $self->DescribeAlarmHistory(@_);
    my $params = {};
    
    $params->{ AlarmHistoryItems } = $result->AlarmHistoryItems;
    

    while ($result->) {
      $result = $self->DescribeAlarmHistory(@_, NextToken => $result->NextToken);
      
      push @{ $params->{ AlarmHistoryItems } }, @{ $result->AlarmHistoryItems };
      
    }

    return $self->new_with_coercions(Paws::CloudWatch::DescribeAlarmHistory->_returns, %$params);
  }
  sub DescribeAllAlarms {
    my $self = shift;

    my $result = $self->DescribeAlarms(@_);
    my $params = {};
    
    $params->{ MetricAlarms } = $result->MetricAlarms;
    

    while ($result->) {
      $result = $self->DescribeAlarms(@_, NextToken => $result->NextToken);
      
      push @{ $params->{ MetricAlarms } }, @{ $result->MetricAlarms };
      
    }

    return $self->new_with_coercions(Paws::CloudWatch::DescribeAlarms->_returns, %$params);
  }
  sub ListAllMetrics {
    my $self = shift;

    my $result = $self->ListMetrics(@_);
    my $params = {};
    
    $params->{ Metrics } = $result->Metrics;
    

    while ($result->) {
      $result = $self->ListMetrics(@_, NextToken => $result->NextToken);
      
      push @{ $params->{ Metrics } }, @{ $result->Metrics };
      
    }

    return $self->new_with_coercions(Paws::CloudWatch::ListMetrics->_returns, %$params);
  }


  sub operations { qw/DeleteAlarms DescribeAlarmHistory DescribeAlarms DescribeAlarmsForMetric DisableAlarmActions EnableAlarmActions GetMetricStatistics ListMetrics PutMetricAlarm PutMetricData SetAlarmState / }

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
the applications you run on AWS in real-time. You can use CloudWatch to
collect and track metrics, which are the variables you want to measure
for your resources and applications.

CloudWatch alarms send notifications or automatically make changes to
the resources you are monitoring based on rules that you define. For
example, you can monitor the CPU usage and disk reads and writes of
your Amazon Elastic Compute Cloud (Amazon EC2) instances and then use
this data to determine whether you should launch additional instances
to handle increased load. You can also use this data to stop under-used
instances to save money.

In addition to monitoring the built-in metrics that come with AWS, you
can monitor your own custom metrics. With CloudWatch, you gain
system-wide visibility into resource utilization, application
performance, and operational health.

=head1 METHODS

=head2 DeleteAlarms(AlarmNames => ArrayRef[Str])

Each argument is described in detail in: L<Paws::CloudWatch::DeleteAlarms>

Returns: nothing

  Deletes all specified alarms. In the event of an error, no alarms are
deleted.


=head2 DescribeAlarmHistory([AlarmName => Str, EndDate => Str, HistoryItemType => Str, MaxRecords => Int, NextToken => Str, StartDate => Str])

Each argument is described in detail in: L<Paws::CloudWatch::DescribeAlarmHistory>

Returns: a L<Paws::CloudWatch::DescribeAlarmHistoryOutput> instance

  Retrieves history for the specified alarm. Filter alarms by date range
or item type. If an alarm name is not specified, Amazon CloudWatch
returns histories for all of the owner's alarms.

Amazon CloudWatch retains the history of an alarm for two weeks,
whether or not you delete the alarm.


=head2 DescribeAlarms([ActionPrefix => Str, AlarmNamePrefix => Str, AlarmNames => ArrayRef[Str], MaxRecords => Int, NextToken => Str, StateValue => Str])

Each argument is described in detail in: L<Paws::CloudWatch::DescribeAlarms>

Returns: a L<Paws::CloudWatch::DescribeAlarmsOutput> instance

  Retrieves alarms with the specified names. If no name is specified, all
alarms for the user are returned. Alarms can be retrieved by using only
a prefix for the alarm name, the alarm state, or a prefix for any
action.


=head2 DescribeAlarmsForMetric(MetricName => Str, Namespace => Str, [Dimensions => ArrayRef[L<Paws::CloudWatch::Dimension>], Period => Int, Statistic => Str, Unit => Str])

Each argument is described in detail in: L<Paws::CloudWatch::DescribeAlarmsForMetric>

Returns: a L<Paws::CloudWatch::DescribeAlarmsForMetricOutput> instance

  Retrieves all alarms for a single metric. Specify a statistic, period,
or unit to filter the set of alarms further.


=head2 DisableAlarmActions(AlarmNames => ArrayRef[Str])

Each argument is described in detail in: L<Paws::CloudWatch::DisableAlarmActions>

Returns: nothing

  Disables actions for the specified alarms. When an alarm's actions are
disabled the alarm's state may change, but none of the alarm's actions
will execute.


=head2 EnableAlarmActions(AlarmNames => ArrayRef[Str])

Each argument is described in detail in: L<Paws::CloudWatch::EnableAlarmActions>

Returns: nothing

  Enables actions for the specified alarms.


=head2 GetMetricStatistics(EndTime => Str, MetricName => Str, Namespace => Str, Period => Int, StartTime => Str, Statistics => ArrayRef[Str], [Dimensions => ArrayRef[L<Paws::CloudWatch::Dimension>], Unit => Str])

Each argument is described in detail in: L<Paws::CloudWatch::GetMetricStatistics>

Returns: a L<Paws::CloudWatch::GetMetricStatisticsOutput> instance

  Gets statistics for the specified metric.

The maximum number of data points that can be queried is 50,850,
whereas the maximum number of data points returned from a single
C<GetMetricStatistics> request is 1,440. If you make a request that
generates more than 1,440 data points, Amazon CloudWatch returns an
error. In such a case, you can alter the request by narrowing the
specified time range or increasing the specified period. A period can
be as short as one minute (60 seconds) or as long as one day (86,400
seconds). Alternatively, you can make multiple requests across adjacent
time ranges. C<GetMetricStatistics> does not return the data in
chronological order.

Amazon CloudWatch aggregates data points based on the length of the
C<period> that you specify. For example, if you request statistics with
a one-minute granularity, Amazon CloudWatch aggregates data points with
time stamps that fall within the same one-minute period. In such a
case, the data points queried can greatly outnumber the data points
returned.

The following examples show various statistics allowed by the data
point query maximum of 50,850 when you call C<GetMetricStatistics> on
Amazon EC2 instances with detailed (one-minute) monitoring enabled:

=over

=item *

Statistics for up to 400 instances for a span of one hour

=item *

Statistics for up to 35 instances over a span of 24 hours

=item *

Statistics for up to 2 instances over a span of 2 weeks

=back

For information about the namespace, metric names, and dimensions that
other Amazon Web Services products use to send metrics to CloudWatch,
go to Amazon CloudWatch Metrics, Namespaces, and Dimensions Reference
in the I<Amazon CloudWatch Developer Guide>.


=head2 ListMetrics([Dimensions => ArrayRef[L<Paws::CloudWatch::DimensionFilter>], MetricName => Str, Namespace => Str, NextToken => Str])

Each argument is described in detail in: L<Paws::CloudWatch::ListMetrics>

Returns: a L<Paws::CloudWatch::ListMetricsOutput> instance

  Returns a list of valid metrics stored for the AWS account owner.
Returned metrics can be used with GetMetricStatistics to obtain
statistical data for a given metric.

Up to 500 results are returned for any one call. To retrieve further
results, use returned C<NextToken> values with subsequent
C<ListMetrics> operations.

If you create a metric with PutMetricData, allow up to fifteen minutes
for the metric to appear in calls to C<ListMetrics>. Statistics about
the metric, however, are available sooner using GetMetricStatistics.


=head2 PutMetricAlarm(AlarmName => Str, ComparisonOperator => Str, EvaluationPeriods => Int, MetricName => Str, Namespace => Str, Period => Int, Statistic => Str, Threshold => Num, [ActionsEnabled => Bool, AlarmActions => ArrayRef[Str], AlarmDescription => Str, Dimensions => ArrayRef[L<Paws::CloudWatch::Dimension>], InsufficientDataActions => ArrayRef[Str], OKActions => ArrayRef[Str], Unit => Str])

Each argument is described in detail in: L<Paws::CloudWatch::PutMetricAlarm>

Returns: nothing

  Creates or updates an alarm and associates it with the specified Amazon
CloudWatch metric. Optionally, this operation can associate one or more
Amazon SNS resources with the alarm.

When this operation creates an alarm, the alarm state is immediately
set to C<INSUFFICIENT_DATA>. The alarm is evaluated and its
C<StateValue> is set appropriately. Any actions associated with the
C<StateValue> are then executed.

When updating an existing alarm, its C<StateValue> is left unchanged,
but it completely overwrites the alarm's previous configuration.

If you are using an AWS Identity and Access Management (IAM) account to
create or modify an alarm, you must have the following Amazon EC2
permissions:

=over

=item *

C<ec2:DescribeInstanceStatus> and C<ec2:DescribeInstances> for all
alarms on Amazon EC2 instance status metrics.

=item *

C<ec2:StopInstances> for alarms with stop actions.

=item *

C<ec2:TerminateInstances> for alarms with terminate actions.

=item *

C<ec2:DescribeInstanceRecoveryAttribute>, and C<ec2:RecoverInstances>
for alarms with recover actions.

=back

If you have read/write permissions for Amazon CloudWatch but not for
Amazon EC2, you can still create an alarm but the stop or terminate
actions won't be performed on the Amazon EC2 instance. However, if you
are later granted permission to use the associated Amazon EC2 APIs, the
alarm actions you created earlier will be performed. For more
information about IAM permissions, see Permissions and Policies in
I<Using IAM>.

If you are using an IAM role (e.g., an Amazon EC2 instance profile),
you cannot stop or terminate the instance using alarm actions. However,
you can still see the alarm state and perform any other actions such as
Amazon SNS notifications or Auto Scaling policies.

If you are using temporary security credentials granted using the AWS
Security Token Service (AWS STS), you cannot stop or terminate an
Amazon EC2 instance using alarm actions.


=head2 PutMetricData(MetricData => ArrayRef[L<Paws::CloudWatch::MetricDatum>], Namespace => Str)

Each argument is described in detail in: L<Paws::CloudWatch::PutMetricData>

Returns: nothing

  Publishes metric data points to Amazon CloudWatch. Amazon CloudWatch
associates the data points with the specified metric. If the specified
metric does not exist, Amazon CloudWatch creates the metric. When
Amazon CloudWatch creates a metric, it can take up to fifteen minutes
for the metric to appear in calls to ListMetrics.

Each C<PutMetricData> request is limited to 8 KB in size for HTTP GET
requests and is limited to 40 KB in size for HTTP POST requests.

Although the C<Value> parameter accepts numbers of type C<Double>,
Amazon CloudWatch rejects values that are either too small or too
large. Values must be in the range of 8.515920e-109 to 1.174271e+108
(Base 10) or 2e-360 to 2e360 (Base 2). In addition, special values
(e.g., NaN, +Infinity, -Infinity) are not supported.

Data that is timestamped 24 hours or more in the past may take in
excess of 48 hours to become available from submission time using
C<GetMetricStatistics>.


=head2 SetAlarmState(AlarmName => Str, StateReason => Str, StateValue => Str, [StateReasonData => Str])

Each argument is described in detail in: L<Paws::CloudWatch::SetAlarmState>

Returns: nothing

  Temporarily sets the state of an alarm for testing purposes. When the
updated C<StateValue> differs from the previous value, the action
configured for the appropriate state is invoked. For example, if your
alarm is configured to send an Amazon SNS message when an alarm is
triggered, temporarily changing the alarm's state to B<ALARM> sends an
Amazon SNS message. The alarm returns to its actual state (often within
seconds). Because the alarm state change happens very quickly, it is
typically only visible in the alarm's B<History> tab in the Amazon
CloudWatch console or through C<DescribeAlarmHistory>.


=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

