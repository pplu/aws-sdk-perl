# Generated by default/object.tt
package Paws::LookoutMetrics::Metric;
  use Moose;
  has AggregationFunction => (is => 'ro', isa => 'Str', required => 1);
  has MetricName => (is => 'ro', isa => 'Str', required => 1);
  has Namespace => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutMetrics::Metric

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LookoutMetrics::Metric object:

  $service_obj->Method(Att1 => { AggregationFunction => $value, ..., Namespace => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LookoutMetrics::Metric object:

  $result = $service_obj->Method(...);
  $result->Att1->AggregationFunction

=head1 DESCRIPTION

A calculation made by contrasting a measure and a dimension from your
source data.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AggregationFunction => Str

The function with which the metric is calculated.


=head2 B<REQUIRED> MetricName => Str

The name of the metric.


=head2 Namespace => Str

The namespace for the metric.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LookoutMetrics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

