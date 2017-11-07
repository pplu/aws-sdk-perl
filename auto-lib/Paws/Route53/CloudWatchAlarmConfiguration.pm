package Paws::Route53::CloudWatchAlarmConfiguration;
  use Moose;
  has ComparisonOperator => (is => 'ro', isa => 'Str', required => 1);
  has Dimensions => (is => 'ro', isa => 'ArrayRef[Paws::Route53::Dimension]', request_name => 'Dimension', traits => ['NameInRequest']);
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

A complex type that contains information about the CloudWatch alarm
that Amazon Route 53 is monitoring for this health check.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ComparisonOperator => Str

  For the metric that the CloudWatch alarm is associated with, the
arithmetic operation that is used for the comparison.


=head2 Dimensions => ArrayRef[L<Paws::Route53::Dimension>]

  For the metric that the CloudWatch alarm is associated with, a complex
type that contains information about the dimensions for the metric. For
information, see Amazon CloudWatch Namespaces, Dimensions, and Metrics
Reference
(http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/CW_Support_For_AWS.html)
in the I<Amazon CloudWatch User Guide>.


=head2 B<REQUIRED> EvaluationPeriods => Int

  For the metric that the CloudWatch alarm is associated with, the number
of periods that the metric is compared to the threshold.


=head2 B<REQUIRED> MetricName => Str

  The name of the CloudWatch metric that the alarm is associated with.


=head2 B<REQUIRED> Namespace => Str

  The namespace of the metric that the alarm is associated with. For more
information, see Amazon CloudWatch Namespaces, Dimensions, and Metrics
Reference
(http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/CW_Support_For_AWS.html)
in the I<Amazon CloudWatch User Guide>.


=head2 B<REQUIRED> Period => Int

  For the metric that the CloudWatch alarm is associated with, the
duration of one evaluation period in seconds.


=head2 B<REQUIRED> Statistic => Str

  For the metric that the CloudWatch alarm is associated with, the
statistic that is applied to the metric.


=head2 B<REQUIRED> Threshold => Num

  For the metric that the CloudWatch alarm is associated with, the value
the metric is compared with.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

