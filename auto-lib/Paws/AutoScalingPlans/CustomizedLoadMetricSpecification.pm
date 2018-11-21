package Paws::AutoScalingPlans::CustomizedLoadMetricSpecification;
  use Moose;
  has Dimensions => (is => 'ro', isa => 'ArrayRef[Paws::AutoScalingPlans::MetricDimension]');
  has MetricName => (is => 'ro', isa => 'Str', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', required => 1);
  has Statistic => (is => 'ro', isa => 'Str', required => 1);
  has Unit => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScalingPlans::CustomizedLoadMetricSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AutoScalingPlans::CustomizedLoadMetricSpecification object:

  $service_obj->Method(Att1 => { Dimensions => $value, ..., Unit => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AutoScalingPlans::CustomizedLoadMetricSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->Dimensions

=head1 DESCRIPTION

Represents a CloudWatch metric of your choosing that can be used for
predictive scaling.

For predictive scaling to work with a customized load metric
specification, AWS Auto Scaling needs access to the C<Sum> and
C<Average> statistics that CloudWatch computes from metric data.
Statistics are calculations used to aggregate data over specified time
periods. For more information, see the Amazon CloudWatch User Guide
(http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/WhatIsCloudWatch.html).

When you choose a load metric, make sure that the required C<Sum> and
C<Average> statistics for your metric are available in CloudWatch and
that they provide relevant data for predictive scaling. The C<Sum>
statistic must represent the total load on the resource, and the
C<Average> statistic must represent the average load per capacity unit
of the resource. For example, there is a metric that counts the number
of requests processed by your Auto Scaling group. If the C<Sum>
statistic represents the total request count processed by the group,
then the C<Average> statistic for the specified metric must represent
the average request count processed by each instance of the group.

For information about terminology, see Amazon CloudWatch Concepts
(http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html).

=head1 ATTRIBUTES


=head2 Dimensions => ArrayRef[L<Paws::AutoScalingPlans::MetricDimension>]

  The dimensions of the metric.


=head2 B<REQUIRED> MetricName => Str

  The name of the metric.


=head2 B<REQUIRED> Namespace => Str

  The namespace of the metric.


=head2 B<REQUIRED> Statistic => Str

  The statistic of the metric. Currently, the value must always be
C<Sum>.


=head2 Unit => Str

  The unit of the metric.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScalingPlans>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

