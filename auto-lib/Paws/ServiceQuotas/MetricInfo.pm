package Paws::ServiceQuotas::MetricInfo;
  use Moose;
  has MetricDimensions => (is => 'ro', isa => 'Paws::ServiceQuotas::MetricDimensionsMapDefinition');
  has MetricName => (is => 'ro', isa => 'Str');
  has MetricNamespace => (is => 'ro', isa => 'Str');
  has MetricStatisticRecommendation => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceQuotas::MetricInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceQuotas::MetricInfo object:

  $service_obj->Method(Att1 => { MetricDimensions => $value, ..., MetricStatisticRecommendation => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceQuotas::MetricInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->MetricDimensions

=head1 DESCRIPTION

A structure that uses CloudWatch metrics to gather data about the
service quota.

=head1 ATTRIBUTES


=head2 MetricDimensions => L<Paws::ServiceQuotas::MetricDimensionsMapDefinition>

  A dimension is a name/value pair that is part of the identity of a
metric. Every metric has specific characteristics that describe it, and
you can think of dimensions as categories for those characteristics.
These dimensions are part of the CloudWatch Metric Identity that
measures usage against a particular service quota.


=head2 MetricName => Str

  The name of the CloudWatch metric that measures usage of a service
quota. This is a required field.


=head2 MetricNamespace => Str

  The namespace of the metric. The namespace is a container for
CloudWatch metrics. You can specify a name for the namespace when you
create a metric.


=head2 MetricStatisticRecommendation => Str

  Statistics are metric data aggregations over specified periods of time.
This is the recommended statistic to use when comparing usage in the
CloudWatch Metric against your Service Quota.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceQuotas>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

