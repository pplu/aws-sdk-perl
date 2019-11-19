# Generated from default/object.tt
package Paws::CostExplorer::SavingsPlansCoverageData;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CostExplorer::Types qw//;
  has CoveragePercentage => (is => 'ro', isa => Str);
  has OnDemandCost => (is => 'ro', isa => Str);
  has SpendCoveredBySavingsPlans => (is => 'ro', isa => Str);
  has TotalCost => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CoveragePercentage' => {
                                         'type' => 'Str'
                                       },
               'OnDemandCost' => {
                                   'type' => 'Str'
                                 },
               'TotalCost' => {
                                'type' => 'Str'
                              },
               'SpendCoveredBySavingsPlans' => {
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

Paws::CostExplorer::SavingsPlansCoverageData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostExplorer::SavingsPlansCoverageData object:

  $service_obj->Method(Att1 => { CoveragePercentage => $value, ..., TotalCost => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::SavingsPlansCoverageData object:

  $result = $service_obj->Method(...);
  $result->Att1->CoveragePercentage

=head1 DESCRIPTION

Specific coverage percentage, On-Demand costs, and spend covered by
Savings Plans, and total Savings Plans costs for an account.

=head1 ATTRIBUTES


=head2 CoveragePercentage => Str

  The percentage of your existing Savings Planscovered usage, divided by
all of your eligible Savings Plans usage in an account(or set of
accounts).


=head2 OnDemandCost => Str

  The cost of your Amazon Web Services usage at the public On-Demand
rate.


=head2 SpendCoveredBySavingsPlans => Str

  The amount of your Amazon Web Services usage that is covered by a
Savings Plans.


=head2 TotalCost => Str

  The total cost of your Amazon Web Services usage, regardless of your
purchase option.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

