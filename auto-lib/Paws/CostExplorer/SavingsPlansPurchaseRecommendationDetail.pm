package Paws::CostExplorer::SavingsPlansPurchaseRecommendationDetail;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str');
  has CurrencyCode => (is => 'ro', isa => 'Str');
  has CurrentAverageHourlyOnDemandSpend => (is => 'ro', isa => 'Str');
  has CurrentMaximumHourlyOnDemandSpend => (is => 'ro', isa => 'Str');
  has CurrentMinimumHourlyOnDemandSpend => (is => 'ro', isa => 'Str');
  has EstimatedAverageUtilization => (is => 'ro', isa => 'Str');
  has EstimatedMonthlySavingsAmount => (is => 'ro', isa => 'Str');
  has EstimatedOnDemandCost => (is => 'ro', isa => 'Str');
  has EstimatedOnDemandCostWithCurrentCommitment => (is => 'ro', isa => 'Str');
  has EstimatedROI => (is => 'ro', isa => 'Str');
  has EstimatedSavingsAmount => (is => 'ro', isa => 'Str');
  has EstimatedSavingsPercentage => (is => 'ro', isa => 'Str');
  has EstimatedSPCost => (is => 'ro', isa => 'Str');
  has HourlyCommitmentToPurchase => (is => 'ro', isa => 'Str');
  has SavingsPlansDetails => (is => 'ro', isa => 'Paws::CostExplorer::SavingsPlansDetails');
  has UpfrontCost => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::SavingsPlansPurchaseRecommendationDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostExplorer::SavingsPlansPurchaseRecommendationDetail object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., UpfrontCost => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::SavingsPlansPurchaseRecommendationDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

Details for your recommended Savings Plans.

=head1 ATTRIBUTES


=head2 AccountId => Str

  The C<AccountID> the recommendation is generated for.


=head2 CurrencyCode => Str

  The currency code Amazon Web Services used to generate the
recommendations and present potential savings.


=head2 CurrentAverageHourlyOnDemandSpend => Str

  The average value of hourly On-Demand spend over the lookback period of
the applicable usage type.


=head2 CurrentMaximumHourlyOnDemandSpend => Str

  The highest value of hourly On-Demand spend over the lookback period of
the applicable usage type.


=head2 CurrentMinimumHourlyOnDemandSpend => Str

  The lowest value of hourly On-Demand spend over the lookback period of
the applicable usage type.


=head2 EstimatedAverageUtilization => Str

  The estimated utilization of the recommended Savings Plans.


=head2 EstimatedMonthlySavingsAmount => Str

  The estimated monthly savings amount, based on the recommended Savings
Plans.


=head2 EstimatedOnDemandCost => Str

  The remaining On-Demand cost estimated to not be covered by the
recommended Savings Plans, over the length of the lookback period.


=head2 EstimatedOnDemandCostWithCurrentCommitment => Str

  The estimated On-Demand costs you would expect with no additional
commitment, based on your usage of the selected time period and the
Savings Plans you own.


=head2 EstimatedROI => Str

  The estimated return on investment based on the recommended Savings
Plans purchased. This is calculated as C<estimatedSavingsAmount>/
C<estimatedSPCost>*100.


=head2 EstimatedSavingsAmount => Str

  The estimated savings amount based on the recommended Savings Plans
over the length of the lookback period.


=head2 EstimatedSavingsPercentage => Str

  The estimated savings percentage relative to the total cost of
applicable On-Demand usage over the lookback period.


=head2 EstimatedSPCost => Str

  The cost of the recommended Savings Plans over the length of the
lookback period.


=head2 HourlyCommitmentToPurchase => Str

  The recommended hourly commitment level for the Savings Plans type, and
configuration based on the usage during the lookback period.


=head2 SavingsPlansDetails => L<Paws::CostExplorer::SavingsPlansDetails>

  Details for your recommended Savings Plans.


=head2 UpfrontCost => Str

  The upfront cost of the recommended Savings Plans, based on the
selected payment option.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

