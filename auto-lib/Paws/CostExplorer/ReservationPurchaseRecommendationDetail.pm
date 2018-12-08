package Paws::CostExplorer::ReservationPurchaseRecommendationDetail;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str');
  has AverageNormalizedUnitsUsedPerHour => (is => 'ro', isa => 'Str');
  has AverageNumberOfInstancesUsedPerHour => (is => 'ro', isa => 'Str');
  has AverageUtilization => (is => 'ro', isa => 'Str');
  has CurrencyCode => (is => 'ro', isa => 'Str');
  has EstimatedBreakEvenInMonths => (is => 'ro', isa => 'Str');
  has EstimatedMonthlyOnDemandCost => (is => 'ro', isa => 'Str');
  has EstimatedMonthlySavingsAmount => (is => 'ro', isa => 'Str');
  has EstimatedMonthlySavingsPercentage => (is => 'ro', isa => 'Str');
  has EstimatedReservationCostForLookbackPeriod => (is => 'ro', isa => 'Str');
  has InstanceDetails => (is => 'ro', isa => 'Paws::CostExplorer::InstanceDetails');
  has MaximumNormalizedUnitsUsedPerHour => (is => 'ro', isa => 'Str');
  has MaximumNumberOfInstancesUsedPerHour => (is => 'ro', isa => 'Str');
  has MinimumNormalizedUnitsUsedPerHour => (is => 'ro', isa => 'Str');
  has MinimumNumberOfInstancesUsedPerHour => (is => 'ro', isa => 'Str');
  has RecommendedNormalizedUnitsToPurchase => (is => 'ro', isa => 'Str');
  has RecommendedNumberOfInstancesToPurchase => (is => 'ro', isa => 'Str');
  has RecurringStandardMonthlyCost => (is => 'ro', isa => 'Str');
  has UpfrontCost => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::ReservationPurchaseRecommendationDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostExplorer::ReservationPurchaseRecommendationDetail object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., UpfrontCost => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::ReservationPurchaseRecommendationDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

Details about your recommended reservation purchase.

=head1 ATTRIBUTES


=head2 AccountId => Str

  


=head2 AverageNormalizedUnitsUsedPerHour => Str

  The average number of normalized units that you used in an hour during
the historical period. AWS uses this to calculate your recommended
reservation purchases.


=head2 AverageNumberOfInstancesUsedPerHour => Str

  The average number of instances that you used in an hour during the
historical period. AWS uses this to calculate your recommended
reservation purchases.


=head2 AverageUtilization => Str

  The average utilization of your instances. AWS uses this to calculate
your recommended reservation purchases.


=head2 CurrencyCode => Str

  The currency code that AWS used to calculate the costs for this
instance.


=head2 EstimatedBreakEvenInMonths => Str

  How long AWS estimates that it takes for this instance to start saving
you money, in months.


=head2 EstimatedMonthlyOnDemandCost => Str

  How much AWS estimates that you spend on On-Demand Instances in a
month.


=head2 EstimatedMonthlySavingsAmount => Str

  How much AWS estimates that this specific recommendation could save you
in a month.


=head2 EstimatedMonthlySavingsPercentage => Str

  How much AWS estimates that this specific recommendation could save you
in a month, as a percentage of your overall costs.


=head2 EstimatedReservationCostForLookbackPeriod => Str

  How much AWS estimates that you would have spent for all usage during
the specified historical period if you had had a reservation.


=head2 InstanceDetails => L<Paws::CostExplorer::InstanceDetails>

  Details about the instances that AWS recommends that you purchase.


=head2 MaximumNormalizedUnitsUsedPerHour => Str

  The maximum number of normalized units that you used in an hour during
the historical period. AWS uses this to calculate your recommended
reservation purchases.


=head2 MaximumNumberOfInstancesUsedPerHour => Str

  The maximum number of instances that you used in an hour during the
historical period. AWS uses this to calculate your recommended
reservation purchases.


=head2 MinimumNormalizedUnitsUsedPerHour => Str

  The minimum number of normalized units that you used in an hour during
the historical period. AWS uses this to calculate your recommended
reservation purchases.


=head2 MinimumNumberOfInstancesUsedPerHour => Str

  The minimum number of instances that you used in an hour during the
historical period. AWS uses this to calculate your recommended
reservation purchases.


=head2 RecommendedNormalizedUnitsToPurchase => Str

  The number of normalized units that AWS recommends that you purchase.


=head2 RecommendedNumberOfInstancesToPurchase => Str

  The number of instances that AWS recommends that you purchase.


=head2 RecurringStandardMonthlyCost => Str

  How much purchasing this instance costs you on a monthly basis.


=head2 UpfrontCost => Str

  How much purchasing this instance costs you upfront.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

