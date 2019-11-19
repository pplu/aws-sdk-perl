# Generated from default/object.tt
package Paws::CostExplorer::SavingsPlansPurchaseRecommendation;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CostExplorer::Types qw/CostExplorer_SavingsPlansPurchaseRecommendationSummary CostExplorer_SavingsPlansPurchaseRecommendationDetail/;
  has LookbackPeriodInDays => (is => 'ro', isa => Str);
  has PaymentOption => (is => 'ro', isa => Str);
  has SavingsPlansPurchaseRecommendationDetails => (is => 'ro', isa => ArrayRef[CostExplorer_SavingsPlansPurchaseRecommendationDetail]);
  has SavingsPlansPurchaseRecommendationSummary => (is => 'ro', isa => CostExplorer_SavingsPlansPurchaseRecommendationSummary);
  has SavingsPlansType => (is => 'ro', isa => Str);
  has TermInYears => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SavingsPlansPurchaseRecommendationDetails' => {
                                                                'class' => 'Paws::CostExplorer::SavingsPlansPurchaseRecommendationDetail',
                                                                'type' => 'ArrayRef[CostExplorer_SavingsPlansPurchaseRecommendationDetail]'
                                                              },
               'SavingsPlansType' => {
                                       'type' => 'Str'
                                     },
               'TermInYears' => {
                                  'type' => 'Str'
                                },
               'SavingsPlansPurchaseRecommendationSummary' => {
                                                                'type' => 'CostExplorer_SavingsPlansPurchaseRecommendationSummary',
                                                                'class' => 'Paws::CostExplorer::SavingsPlansPurchaseRecommendationSummary'
                                                              },
               'LookbackPeriodInDays' => {
                                           'type' => 'Str'
                                         },
               'PaymentOption' => {
                                    'type' => 'Str'
                                  }
             }
}
;
    return $Params_map;
  }


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


=head2 SavingsPlansPurchaseRecommendationDetails => ArrayRef[CostExplorer_SavingsPlansPurchaseRecommendationDetail]

  Details for the Savings Plans we recommend you to purchase to cover
existing, Savings Plans eligible workloads.


=head2 SavingsPlansPurchaseRecommendationSummary => CostExplorer_SavingsPlansPurchaseRecommendationSummary

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

