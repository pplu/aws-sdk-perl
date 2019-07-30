package Paws::CostExplorer::RightsizingRecommendationSummary;
  use Moose;
  has EstimatedTotalMonthlySavingsAmount => (is => 'ro', isa => 'Str');
  has SavingsCurrencyCode => (is => 'ro', isa => 'Str');
  has SavingsPercentage => (is => 'ro', isa => 'Str');
  has TotalRecommendationCount => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::RightsizingRecommendationSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostExplorer::RightsizingRecommendationSummary object:

  $service_obj->Method(Att1 => { EstimatedTotalMonthlySavingsAmount => $value, ..., TotalRecommendationCount => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::RightsizingRecommendationSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->EstimatedTotalMonthlySavingsAmount

=head1 DESCRIPTION

Summary of rightsizing recommendations

=head1 ATTRIBUTES


=head2 EstimatedTotalMonthlySavingsAmount => Str

  Estimated total savings resulting from modifications, on a monthly
basis.


=head2 SavingsCurrencyCode => Str

  The currency code that Amazon Web Services used to calculate the
savings.


=head2 SavingsPercentage => Str

  Savings percentage based on the recommended modifications, relative to
the total On Demand costs associated with these instances.


=head2 TotalRecommendationCount => Str

  Total number of instance recommendations.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

