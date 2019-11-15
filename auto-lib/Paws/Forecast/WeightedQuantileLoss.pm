package Paws::Forecast::WeightedQuantileLoss;
  use Moose;
  has LossValue => (is => 'ro', isa => 'Num');
  has Quantile => (is => 'ro', isa => 'Num');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::WeightedQuantileLoss

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Forecast::WeightedQuantileLoss object:

  $service_obj->Method(Att1 => { LossValue => $value, ..., Quantile => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Forecast::WeightedQuantileLoss object:

  $result = $service_obj->Method(...);
  $result->Att1->LossValue

=head1 DESCRIPTION

The weighted loss value for a quantile. This object is part of the
Metrics object.

=head1 ATTRIBUTES


=head2 LossValue => Num

  The difference between the predicted value and actual value over the
quantile, weighted (normalized) by dividing by the sum over all
quantiles.


=head2 Quantile => Num

  The quantile. Quantiles divide a probability distribution into regions
of equal probability. For example, if the distribution was divided into
5 regions of equal probability, the quantiles would be 0.2, 0.4, 0.6,
and 0.8.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

