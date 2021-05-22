
package Paws::Lightsail::PutAlarm;
  use Moose;
  has AlarmName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'alarmName' , required => 1);
  has ComparisonOperator => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'comparisonOperator' , required => 1);
  has ContactProtocols => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'contactProtocols' );
  has DatapointsToAlarm => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'datapointsToAlarm' );
  has EvaluationPeriods => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'evaluationPeriods' , required => 1);
  has MetricName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'metricName' , required => 1);
  has MonitoredResourceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'monitoredResourceName' , required => 1);
  has NotificationEnabled => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'notificationEnabled' );
  has NotificationTriggers => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'notificationTriggers' );
  has Threshold => (is => 'ro', isa => 'Num', traits => ['NameInRequest'], request_name => 'threshold' , required => 1);
  has TreatMissingData => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'treatMissingData' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutAlarm');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::PutAlarmResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::PutAlarm - Arguments for method PutAlarm on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutAlarm on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method PutAlarm.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutAlarm.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $PutAlarmResult = $lightsail->PutAlarm(
      AlarmName             => 'MyResourceName',
      ComparisonOperator    => 'GreaterThanOrEqualToThreshold',
      EvaluationPeriods     => 1,
      MetricName            => 'CPUUtilization',
      MonitoredResourceName => 'MyResourceName',
      Threshold             => 1,
      ContactProtocols      => [
        'Email', ...    # values: Email, SMS
      ],                # OPTIONAL
      DatapointsToAlarm    => 1,    # OPTIONAL
      NotificationEnabled  => 1,    # OPTIONAL
      NotificationTriggers => [
        'OK', ...                   # values: OK, ALARM, INSUFFICIENT_DATA
      ],                            # OPTIONAL
      TreatMissingData => 'breaching',    # OPTIONAL
    );

    # Results:
    my $Operations = $PutAlarmResult->Operations;

    # Returns a L<Paws::Lightsail::PutAlarmResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/PutAlarm>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AlarmName => Str

The name for the alarm. Specify the name of an existing alarm to
update, and overwrite the previous configuration of the alarm.



=head2 B<REQUIRED> ComparisonOperator => Str

The arithmetic operation to use when comparing the specified statistic
to the threshold. The specified statistic value is used as the first
operand.

Valid values are: C<"GreaterThanOrEqualToThreshold">, C<"GreaterThanThreshold">, C<"LessThanThreshold">, C<"LessThanOrEqualToThreshold">

=head2 ContactProtocols => ArrayRef[Str|Undef]

The contact protocols to use for the alarm, such as C<Email>, C<SMS>
(text messaging), or both.

A notification is sent via the specified contact protocol if
notifications are enabled for the alarm, and when the alarm is
triggered.

A notification is not sent if a contact protocol is not specified, if
the specified contact protocol is not configured in the AWS Region, or
if notifications are not enabled for the alarm using the
C<notificationEnabled> paramater.

Use the C<CreateContactMethod> action to configure a contact protocol
in an AWS Region.



=head2 DatapointsToAlarm => Int

The number of data points that must be not within the specified
threshold to trigger the alarm. If you are setting an "M out of N"
alarm, this value (C<datapointsToAlarm>) is the M.



=head2 B<REQUIRED> EvaluationPeriods => Int

The number of most recent periods over which data is compared to the
specified threshold. If you are setting an "M out of N" alarm, this
value (C<evaluationPeriods>) is the N.

If you are setting an alarm that requires that a number of consecutive
data points be breaching to trigger the alarm, this value specifies the
rolling period of time in which data points are evaluated.

Each evaluation period is five minutes long. For example, specify an
evaluation period of 24 to evaluate a metric over a rolling period of
two hours.

You can specify a minimum valuation period of 1 (5 minutes), and a
maximum evaluation period of 288 (24 hours).



=head2 B<REQUIRED> MetricName => Str

The name of the metric to associate with the alarm.

You can configure up to two alarms per metric.

The following metrics are available for each resource type:

=over

=item *

B<Instances>: C<BurstCapacityPercentage>, C<BurstCapacityTime>,
C<CPUUtilization>, C<NetworkIn>, C<NetworkOut>, C<StatusCheckFailed>,
C<StatusCheckFailed_Instance>, and C<StatusCheckFailed_System>.

=item *

B<Load balancers>: C<ClientTLSNegotiationErrorCount>,
C<HealthyHostCount>, C<UnhealthyHostCount>, C<HTTPCode_LB_4XX_Count>,
C<HTTPCode_LB_5XX_Count>, C<HTTPCode_Instance_2XX_Count>,
C<HTTPCode_Instance_3XX_Count>, C<HTTPCode_Instance_4XX_Count>,
C<HTTPCode_Instance_5XX_Count>, C<InstanceResponseTime>,
C<RejectedConnectionCount>, and C<RequestCount>.

=item *

B<Relational databases>: C<CPUUtilization>, C<DatabaseConnections>,
C<DiskQueueDepth>, C<FreeStorageSpace>, C<NetworkReceiveThroughput>,
and C<NetworkTransmitThroughput>.

=back

For more information about these metrics, see Metrics available in
Lightsail
(https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-resource-health-metrics#available-metrics).

Valid values are: C<"CPUUtilization">, C<"NetworkIn">, C<"NetworkOut">, C<"StatusCheckFailed">, C<"StatusCheckFailed_Instance">, C<"StatusCheckFailed_System">, C<"ClientTLSNegotiationErrorCount">, C<"HealthyHostCount">, C<"UnhealthyHostCount">, C<"HTTPCode_LB_4XX_Count">, C<"HTTPCode_LB_5XX_Count">, C<"HTTPCode_Instance_2XX_Count">, C<"HTTPCode_Instance_3XX_Count">, C<"HTTPCode_Instance_4XX_Count">, C<"HTTPCode_Instance_5XX_Count">, C<"InstanceResponseTime">, C<"RejectedConnectionCount">, C<"RequestCount">, C<"DatabaseConnections">, C<"DiskQueueDepth">, C<"FreeStorageSpace">, C<"NetworkReceiveThroughput">, C<"NetworkTransmitThroughput">, C<"BurstCapacityTime">, C<"BurstCapacityPercentage">

=head2 B<REQUIRED> MonitoredResourceName => Str

The name of the Lightsail resource that will be monitored.

Instances, load balancers, and relational databases are the only
Lightsail resources that can currently be monitored by alarms.



=head2 NotificationEnabled => Bool

Indicates whether the alarm is enabled.

Notifications are enabled by default if you don't specify this
parameter.



=head2 NotificationTriggers => ArrayRef[Str|Undef]

The alarm states that trigger a notification.

An alarm has the following possible states:

=over

=item *

C<ALARM> - The metric is outside of the defined threshold.

=item *

C<INSUFFICIENT_DATA> - The alarm has just started, the metric is not
available, or not enough data is available for the metric to determine
the alarm state.

=item *

C<OK> - The metric is within the defined threshold.

=back

When you specify a notification trigger, the C<ALARM> state must be
specified. The C<INSUFFICIENT_DATA> and C<OK> states can be specified
in addition to the C<ALARM> state.

=over

=item *

If you specify C<OK> as an alarm trigger, a notification is sent when
the alarm switches from an C<ALARM> or C<INSUFFICIENT_DATA> alarm state
to an C<OK> state. This can be thought of as an I<all clear> alarm
notification.

=item *

If you specify C<INSUFFICIENT_DATA> as the alarm trigger, a
notification is sent when the alarm switches from an C<OK> or C<ALARM>
alarm state to an C<INSUFFICIENT_DATA> state.

=back

The notification trigger defaults to C<ALARM> if you don't specify this
parameter.



=head2 B<REQUIRED> Threshold => Num

The value against which the specified statistic is compared.



=head2 TreatMissingData => Str

Sets how this alarm will handle missing data points.

An alarm can treat missing data in the following ways:

=over

=item *

C<breaching> - Assume the missing data is not within the threshold.
Missing data counts towards the number of times the metric is not
within the threshold.

=item *

C<notBreaching> - Assume the missing data is within the threshold.
Missing data does not count towards the number of times the metric is
not within the threshold.

=item *

C<ignore> - Ignore the missing data. Maintains the current alarm state.

=item *

C<missing> - Missing data is treated as missing.

=back

If C<treatMissingData> is not specified, the default behavior of
C<missing> is used.

Valid values are: C<"breaching">, C<"notBreaching">, C<"ignore">, C<"missing">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutAlarm in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

