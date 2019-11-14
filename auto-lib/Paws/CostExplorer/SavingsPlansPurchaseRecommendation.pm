package Paws::CostExplorer::SavingsPlansPurchaseRecommendation;
  use Moose;
  has LookbackPeriodInDays => (is => 'ro', isa => 'Str');
  has PaymentOption => (is => 'ro', isa => 'Str');
  has SavingsPlansPurchaseRecommendationDetails => (is => 'ro', isa => 'ArrayRef[Paws::CostExplorer::SavingsPlansPurchaseRecommendationDetail]');
  has SavingsPlansPurchaseRecommendationSummary => (is => 'ro', isa => 'Paws::CostExplorer::SavingsPlansPurchaseRecommendationSummary');
  has SavingsPlansType => (is => 'ro', isa => 'Str');
  has TermInYears => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::SavingsPlansPurchaseRecommendation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostExplorer::SavingsPlansPurchaseRecommendation object:

  $service_obj->Method(Att1 => { LookbackPeriodInDays => $value, ..., TermInYears => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::SavingsPlansPurchaseRecommendation object:

  $result = $service_obj->Method(...);
  $result->Att1->LookbackPeriodInDays

=head1 DESCRIPTION

Contains your request parameters, Savings Plan Recommendations Summary,
and Details.

=head1 ATTRIBUTES


=head2 LookbackPeriodInDays => Str

  The lookback period in days, used to generate the recommendation.


=head2 PaymentOption => Str

  The payment option used to generate the recommendation.


=head2 SavingsPlansPurchaseRecommendationDetails => ArrayRef[L<Paws::CostExplorer::SavingsPlansPurchaseRecommendationDetail>]

  Details for the Savings Plans we recommend you to purchase to cover
existing, Savings Plans eligible workloads.


=head2 SavingsPlansPurchaseRecommendationSummary => L<Paws::CostExplorer::SavingsPlansPurchaseRecommendationSummary>

  Summary metrics for your Savings Plans Recommendations.


=head2 SavingsPlansType => Str

  The requested Savings Plans recommendation type.


=head2 TermInYears => Str

  The Savings Plans recommendation term in years, used to generate the
recommendation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

