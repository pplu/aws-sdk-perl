package Paws::Connect::HistoricalMetric;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
  has Statistic => (is => 'ro', isa => 'Str');
  has Threshold => (is => 'ro', isa => 'Paws::Connect::Threshold');
  has Unit => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::HistoricalMetric

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Connect::HistoricalMetric object:

  $service_obj->Method(Att1 => { Name => $value, ..., Unit => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Connect::HistoricalMetric object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

A C<HistoricalMetric> object that contains the Name, Unit, Statistic,
and Threshold for the metric.

=head1 ATTRIBUTES


=head2 Name => Str

  The name of the historical metric.


=head2 Statistic => Str

  The statistic for the metric.


=head2 Threshold => L<Paws::Connect::Threshold>

  The threshold for the metric, used with service level metrics.


=head2 Unit => Str

  The unit for the metric.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

