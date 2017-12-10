package Paws::CostExplorer::MetricValue;
  use Moose;
  has Amount => (is => 'ro', isa => 'Str');
  has Unit => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::MetricValue

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostExplorer::MetricValue object:

  $service_obj->Method(Att1 => { Amount => $value, ..., Unit => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::MetricValue object:

  $result = $service_obj->Method(...);
  $result->Att1->Amount

=head1 DESCRIPTION

The aggregated value for a metric.

=head1 ATTRIBUTES


=head2 Amount => Str

  The actual number that represents the metric.


=head2 Unit => Str

  The unit that the metric is given in.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

