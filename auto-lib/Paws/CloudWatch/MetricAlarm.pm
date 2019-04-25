package Paws::CloudWatch::MetricAlarm;
  use Moose;
  has ActionsEnabled => (is => 'ro', isa => 'Bool');
  has AlarmActions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has AlarmArn => (is => 'ro', isa => 'Str');
  has AlarmConfigurationUpdatedTimestamp => (is => 'ro', isa => 'Str');
  has AlarmDescription => (is => 'ro', isa => 'Str');
  has AlarmName => (is => 'ro', isa => 'Str');
  has ComparisonOperator => (is => 'ro', isa => 'Str');
  has DatapointsToAlarm => (is => 'ro', isa => 'Int');
  has Dimensions => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatch::Dimension]');
  has EvaluateLowSampleCountPercentile => (is => 'ro', isa => 'Str');
  has EvaluationPeriods => (is => 'ro', isa => 'Int');
  has ExtendedStatistic => (is => 'ro', isa => 'Str');
  has InsufficientDataActions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MetricName => (is => 'ro', isa => 'Str');
  has Metrics => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatch::MetricDataQuery]');
  has Namespace => (is => 'ro', isa => 'Str');
  has OKActions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Period => (is => 'ro', isa => 'Int');
  has StateReason => (is => 'ro', isa => 'Str');
  has StateReasonData => (is => 'ro', isa => 'Str');
  has StateUpdatedTimestamp => (is => 'ro', isa => 'Str');
  has StateValue => (is => 'ro', isa => 'Str');
  has Statistic => (is => 'ro', isa => 'Str');
  has Threshold => (is => 'ro', isa => 'Num');
  has TreatMissingData => (is => 'ro', isa => 'Str');
  has Unit => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::MetricAlarm

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatch::MetricAlarm object:

  $service_obj->Method(Att1 => { ActionsEnabled => $value, ..., Unit => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatch::MetricAlarm object:

  $result = $service_obj->Method(...);
  $result->Att1->ActionsEnabled

=head1 DESCRIPTION

Represents an alarm.

=head1 ATTRIBUTES


=head2 ActionsEnabled => Bool

  Indicates whether actions should be executed during any changes to the
alarm state.


=head2 AlarmActions => ArrayRef[Str|Undef]

  The actions to execute when this alarm transitions to the C<ALARM>
state from any other state. Each action is specified as an Amazon
Resource Name (ARN).


=head2 AlarmArn => Str

  The Amazon Resource Name (ARN) of the alarm.


=head2 AlarmConfigurationUpdatedTimestamp => Str

  The time stamp of the last update to the alarm configuration.


=head2 AlarmDescription => Str

  The description of the alarm.


=head2 AlarmName => Str

  The name of the alarm.


=head2 ComparisonOperator => Str

  The arithmetic operation to use when comparing the specified statistic
and threshold. The specified statistic value is used as the first
operand.


=head2 DatapointsToAlarm => Int

  The number of datapoints that must be breaching to trigger the alarm.


=head2 Dimensions => ArrayRef[L<Paws::CloudWatch::Dimension>]

  The dimensions for the metric associated with the alarm.


=head2 EvaluateLowSampleCountPercentile => Str

  Used only for alarms based on percentiles. If C<ignore>, the alarm
state does not change during periods with too few data points to be
statistically significant. If C<evaluate> or this parameter is not
used, the alarm is always evaluated and possibly changes state no
matter how many data points are available.


=head2 EvaluationPeriods => Int

  The number of periods over which data is compared to the specified
threshold.


=head2 ExtendedStatistic => Str

  The percentile statistic for the metric associated with the alarm.
Specify a value between p0.0 and p100.


=head2 InsufficientDataActions => ArrayRef[Str|Undef]

  The actions to execute when this alarm transitions to the
C<INSUFFICIENT_DATA> state from any other state. Each action is
specified as an Amazon Resource Name (ARN).


=head2 MetricName => Str

  The name of the metric associated with the alarm.


=head2 Metrics => ArrayRef[L<Paws::CloudWatch::MetricDataQuery>]

  


=head2 Namespace => Str

  The namespace of the metric associated with the alarm.


=head2 OKActions => ArrayRef[Str|Undef]

  The actions to execute when this alarm transitions to the C<OK> state
from any other state. Each action is specified as an Amazon Resource
Name (ARN).


=head2 Period => Int

  The period, in seconds, over which the statistic is applied.


=head2 StateReason => Str

  An explanation for the alarm state, in text format.


=head2 StateReasonData => Str

  An explanation for the alarm state, in JSON format.


=head2 StateUpdatedTimestamp => Str

  The time stamp of the last update to the alarm state.


=head2 StateValue => Str

  The state value for the alarm.


=head2 Statistic => Str

  The statistic for the metric associated with the alarm, other than
percentile. For percentile statistics, use C<ExtendedStatistic>.


=head2 Threshold => Num

  The value to compare with the specified statistic.


=head2 TreatMissingData => Str

  Sets how this alarm is to handle missing data points. If this parameter
is omitted, the default behavior of C<missing> is used.


=head2 Unit => Str

  The unit of the metric associated with the alarm.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

