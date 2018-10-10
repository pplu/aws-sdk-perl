package Paws::Connect::HistoricalMetricData;
  use Moose;
  has Metric => (is => 'ro', isa => 'Paws::Connect::HistoricalMetric');
  has Value => (is => 'ro', isa => 'Num');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::HistoricalMetricData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Connect::HistoricalMetricData object:

  $service_obj->Method(Att1 => { Metric => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Connect::HistoricalMetricData object:

  $result = $service_obj->Method(...);
  $result->Att1->Metric

=head1 DESCRIPTION

A C<HistoricalMetricData> object than contains a C<Metric> and a
C<Value>.

=head1 ATTRIBUTES


=head2 Metric => L<Paws::Connect::HistoricalMetric>

  A C<HistoricalMetric> object.


=head2 Value => Num

  The C<Value> of the metric.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

