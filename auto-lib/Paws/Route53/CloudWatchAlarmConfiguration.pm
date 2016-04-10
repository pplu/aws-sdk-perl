package Paws::Route53::CloudWatchAlarmConfiguration;
  use Moose;
  has ComparisonOperator => (is => 'ro', isa => 'Str', required => 1);
  has Dimensions => (is => 'ro', isa => 'ArrayRef[Paws::Route53::Dimension]');
  has EvaluationPeriods => (is => 'ro', isa => 'Int', required => 1);
  has MetricName => (is => 'ro', isa => 'Str', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', required => 1);
  has Period => (is => 'ro', isa => 'Int', required => 1);
  has Statistic => (is => 'ro', isa => 'Str', required => 1);
  has Threshold => (is => 'ro', isa => 'Num', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::CloudWatchAlarmConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53::CloudWatchAlarmConfiguration object:

  $service_obj->Method(Att1 => { ComparisonOperator => $value, ..., Threshold => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53::CloudWatchAlarmConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->ComparisonOperator

=head1 DESCRIPTION

For CLOUDWATCH_METRIC health checks, a complex type that contains
information about the CloudWatch alarm that you're associating with the
health check.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ComparisonOperator => Str

  The arithmetic operation to use when comparing the specified Statistic
and Threshold.

Valid Values are C<GreaterThanOrEqualToThreshold>,
C<GreaterThanThreshold>, C<LessThanThreshold> and
C<LessThanOrEqualToThreshold>


=head2 Dimensions => ArrayRef[L<Paws::Route53::Dimension>]

  A list of C<Dimension> elements for the CloudWatch metric that is
associated with the CloudWatch alarm. For information about the metrics
and dimensions that CloudWatch supports, see Amazon CloudWatch
Namespaces, Dimensions, and Metrics Reference.


=head2 B<REQUIRED> EvaluationPeriods => Int

  The number of periods over which data is compared to the specified
threshold.


=head2 B<REQUIRED> MetricName => Str

  The name of the CloudWatch metric that is associated with the
CloudWatch alarm.


=head2 B<REQUIRED> Namespace => Str

  The namespace of the CloudWatch metric that is associated with the
CloudWatch alarm.


=head2 B<REQUIRED> Period => Int

  An integer that represents the period in seconds over which the
statistic is applied.


=head2 B<REQUIRED> Statistic => Str

  The statistic to apply to the CloudWatch metric that is associated with
the CloudWatch alarm.

Valid Values are C<SampleCount>, C<Average>, C<Sum>, C<Minimum> and
C<Maximum>


=head2 B<REQUIRED> Threshold => Num

  The value that the metric is compared with to determine the state of
the alarm. For example, if you want the health check to fail if the
average TCP connection time is greater than 500 milliseconds for more
than 60 seconds, the threshold is 500.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

