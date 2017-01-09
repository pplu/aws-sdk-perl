
package Paws::CloudWatch::PutMetricAlarm;
  use Moose;
  has ActionsEnabled => (is => 'ro', isa => 'Bool');
  has AlarmActions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has AlarmDescription => (is => 'ro', isa => 'Str');
  has AlarmName => (is => 'ro', isa => 'Str', required => 1);
  has ComparisonOperator => (is => 'ro', isa => 'Str', required => 1);
  has Dimensions => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatch::Dimension]');
  has EvaluationPeriods => (is => 'ro', isa => 'Int', required => 1);
  has ExtendedStatistic => (is => 'ro', isa => 'Str');
  has InsufficientDataActions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MetricName => (is => 'ro', isa => 'Str', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', required => 1);
  has OKActions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Period => (is => 'ro', isa => 'Int', required => 1);
  has Statistic => (is => 'ro', isa => 'Str');
  has Threshold => (is => 'ro', isa => 'Num', required => 1);
  has Unit => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutMetricAlarm');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::PutMetricAlarm - Arguments for method PutMetricAlarm on Paws::CloudWatch

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutMetricAlarm on the 
Amazon CloudWatch service. Use the attributes of this class
as arguments to method PutMetricAlarm.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutMetricAlarm.

As an example:

  $service_obj->PutMetricAlarm(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ActionsEnabled => Bool

Indicates whether actions should be executed during any changes to the
alarm state.



=head2 AlarmActions => ArrayRef[Str|Undef]

The actions to execute when this alarm transitions to the C<ALARM>
state from any other state. Each action is specified as an Amazon
Resource Name (ARN).

Valid Values: arn:aws:automate:I<region>:ec2:stop |
arn:aws:automate:I<region>:ec2:terminate |
arn:aws:automate:I<region>:ec2:recover

Valid Values (for use with IAM roles):
arn:aws:swf:us-east-1:{I<customer-account>}:action/actions/AWS_EC2.InstanceId.Stop/1.0
|
arn:aws:swf:us-east-1:{I<customer-account>}:action/actions/AWS_EC2.InstanceId.Terminate/1.0
|
arn:aws:swf:us-east-1:{I<customer-account>}:action/actions/AWS_EC2.InstanceId.Reboot/1.0



=head2 AlarmDescription => Str

The description for the alarm.



=head2 B<REQUIRED> AlarmName => Str

The name for the alarm. This name must be unique within the AWS
account.



=head2 B<REQUIRED> ComparisonOperator => Str

The arithmetic operation to use when comparing the specified statistic
and threshold. The specified statistic value is used as the first
operand.

Valid values are: C<"GreaterThanOrEqualToThreshold">, C<"GreaterThanThreshold">, C<"LessThanThreshold">, C<"LessThanOrEqualToThreshold">

=head2 Dimensions => ArrayRef[L<Paws::CloudWatch::Dimension>]

The dimensions for the metric associated with the alarm.



=head2 B<REQUIRED> EvaluationPeriods => Int

The number of periods over which data is compared to the specified
threshold.



=head2 ExtendedStatistic => Str

The percentile statistic for the metric associated with the alarm.
Specify a value between p0.0 and p100.



=head2 InsufficientDataActions => ArrayRef[Str|Undef]

The actions to execute when this alarm transitions to the
C<INSUFFICIENT_DATA> state from any other state. Each action is
specified as an Amazon Resource Name (ARN).

Valid Values: arn:aws:automate:I<region>:ec2:stop |
arn:aws:automate:I<region>:ec2:terminate |
arn:aws:automate:I<region>:ec2:recover

Valid Values (for use with IAM roles):
arn:aws:swf:us-east-1:{I<customer-account>}:action/actions/AWS_EC2.InstanceId.Stop/1.0
|
arn:aws:swf:us-east-1:{I<customer-account>}:action/actions/AWS_EC2.InstanceId.Terminate/1.0
|
arn:aws:swf:us-east-1:{I<customer-account>}:action/actions/AWS_EC2.InstanceId.Reboot/1.0



=head2 B<REQUIRED> MetricName => Str

The name for the metric associated with the alarm.



=head2 B<REQUIRED> Namespace => Str

The namespace for the metric associated with the alarm.



=head2 OKActions => ArrayRef[Str|Undef]

The actions to execute when this alarm transitions to an C<OK> state
from any other state. Each action is specified as an Amazon Resource
Name (ARN).

Valid Values: arn:aws:automate:I<region>:ec2:stop |
arn:aws:automate:I<region>:ec2:terminate |
arn:aws:automate:I<region>:ec2:recover

Valid Values (for use with IAM roles):
arn:aws:swf:us-east-1:{I<customer-account>}:action/actions/AWS_EC2.InstanceId.Stop/1.0
|
arn:aws:swf:us-east-1:{I<customer-account>}:action/actions/AWS_EC2.InstanceId.Terminate/1.0
|
arn:aws:swf:us-east-1:{I<customer-account>}:action/actions/AWS_EC2.InstanceId.Reboot/1.0



=head2 B<REQUIRED> Period => Int

The period, in seconds, over which the specified statistic is applied.



=head2 Statistic => Str

The statistic for the metric associated with the alarm, other than
percentile. For percentile statistics, use C<ExtendedStatistic>.

Valid values are: C<"SampleCount">, C<"Average">, C<"Sum">, C<"Minimum">, C<"Maximum">

=head2 B<REQUIRED> Threshold => Num

The value against which the specified statistic is compared.



=head2 Unit => Str

The unit of measure for the statistic. For example, the units for the
Amazon EC2 NetworkIn metric are Bytes because NetworkIn tracks the
number of bytes that an instance receives on all network interfaces.
You can also specify a unit when you create a custom metric. Units help
provide conceptual meaning to your data. Metric data points that
specify a unit of measure, such as Percent, are aggregated separately.

If you specify a unit, you must use a unit that is appropriate for the
metric. Otherwise, the Amazon CloudWatch alarm can get stuck in the
C<INSUFFICIENT DATA> state.

Valid values are: C<"Seconds">, C<"Microseconds">, C<"Milliseconds">, C<"Bytes">, C<"Kilobytes">, C<"Megabytes">, C<"Gigabytes">, C<"Terabytes">, C<"Bits">, C<"Kilobits">, C<"Megabits">, C<"Gigabits">, C<"Terabits">, C<"Percent">, C<"Count">, C<"Bytes/Second">, C<"Kilobytes/Second">, C<"Megabytes/Second">, C<"Gigabytes/Second">, C<"Terabytes/Second">, C<"Bits/Second">, C<"Kilobits/Second">, C<"Megabits/Second">, C<"Gigabits/Second">, C<"Terabits/Second">, C<"Count/Second">, C<"None">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutMetricAlarm in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

