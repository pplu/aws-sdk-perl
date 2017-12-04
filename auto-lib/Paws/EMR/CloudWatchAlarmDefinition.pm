package Paws::EMR::CloudWatchAlarmDefinition;
  use Moose;
  has ComparisonOperator => (is => 'ro', isa => 'Str', required => 1);
  has Dimensions => (is => 'ro', isa => 'ArrayRef[Paws::EMR::MetricDimension]');
  has EvaluationPeriods => (is => 'ro', isa => 'Int');
  has MetricName => (is => 'ro', isa => 'Str', required => 1);
  has Namespace => (is => 'ro', isa => 'Str');
  has Period => (is => 'ro', isa => 'Int', required => 1);
  has Statistic => (is => 'ro', isa => 'Str');
  has Threshold => (is => 'ro', isa => 'Num', required => 1);
  has Unit => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::CloudWatchAlarmDefinition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::CloudWatchAlarmDefinition object:

  $service_obj->Method(Att1 => { ComparisonOperator => $value, ..., Unit => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::CloudWatchAlarmDefinition object:

  $result = $service_obj->Method(...);
  $result->Att1->ComparisonOperator

=head1 DESCRIPTION

The definition of a CloudWatch metric alarm, which determines when an
automatic scaling activity is triggered. When the defined alarm
conditions are satisfied, scaling activity begins.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ComparisonOperator => Str

  Determines how the metric specified by C<MetricName> is compared to the
value specified by C<Threshold>.


=head2 Dimensions => ArrayRef[L<Paws::EMR::MetricDimension>]

  A CloudWatch metric dimension.


=head2 EvaluationPeriods => Int

  The number of periods, expressed in seconds using C<Period>, during
which the alarm condition must exist before the alarm triggers
automatic scaling activity. The default value is C<1>.


=head2 B<REQUIRED> MetricName => Str

  The name of the CloudWatch metric that is watched to determine an alarm
condition.


=head2 Namespace => Str

  The namespace for the CloudWatch metric. The default is
C<AWS/ElasticMapReduce>.


=head2 B<REQUIRED> Period => Int

  The period, in seconds, over which the statistic is applied. EMR
CloudWatch metrics are emitted every five minutes (300 seconds), so if
an EMR CloudWatch metric is specified, specify C<300>.


=head2 Statistic => Str

  The statistic to apply to the metric associated with the alarm. The
default is C<AVERAGE>.


=head2 B<REQUIRED> Threshold => Num

  The value against which the specified statistic is compared.


=head2 Unit => Str

  The unit of measure associated with the CloudWatch metric being
watched. The value specified for C<Unit> must correspond to the units
specified in the CloudWatch metric.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

