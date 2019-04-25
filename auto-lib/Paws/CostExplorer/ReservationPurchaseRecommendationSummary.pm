package Paws::CostExplorer::ReservationPurchaseRecommendationSummary;
  use Moose;
  has CurrencyCode => (is => 'ro', isa => 'Str');
  has TotalEstimatedMonthlySavingsAmount => (is => 'ro', isa => 'Str');
  has TotalEstimatedMonthlySavingsPercentage => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::ReservationPurchaseRecommendationSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostExplorer::ReservationPurchaseRecommendationSummary object:

  $service_obj->Method(Att1 => { CurrencyCode => $value, ..., TotalEstimatedMonthlySavingsPercentage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::ReservationPurchaseRecommendationSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CurrencyCode

=head1 DESCRIPTION

A summary about this recommendation, such as the currency code, the
amount that AWS estimates that you could save, and the total amount of
reservation to purchase.

=head1 ATTRIBUTES


=head2 CurrencyCode => Str

  The currency code used for this recommendation.


=head2 TotalEstimatedMonthlySavingsAmount => Str

  The total amount that AWS estimates that this recommendation could save
you in a month.


=head2 TotalEstimatedMonthlySavingsPercentage => Str

  The total amount that AWS estimates that this recommendation could save
you in a month, as a percentage of your costs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

