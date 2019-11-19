# Generated from default/object.tt
package Paws::CostExplorer::SavingsPlansCoverage;
  use Moo;
  use Types::Standard qw//;
  use Paws::CostExplorer::Types qw/CostExplorer_DateInterval CostExplorer_Attributes CostExplorer_SavingsPlansCoverageData/;
  has Attributes => (is => 'ro', isa => CostExplorer_Attributes);
  has Coverage => (is => 'ro', isa => CostExplorer_SavingsPlansCoverageData);
  has TimePeriod => (is => 'ro', isa => CostExplorer_DateInterval);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TimePeriod' => {
                                 'class' => 'Paws::CostExplorer::DateInterval',
                                 'type' => 'CostExplorer_DateInterval'
                               },
               'Attributes' => {
                                 'type' => 'CostExplorer_Attributes',
                                 'class' => 'Paws::CostExplorer::Attributes'
                               },
               'Coverage' => {
                               'class' => 'Paws::CostExplorer::SavingsPlansCoverageData',
                               'type' => 'CostExplorer_SavingsPlansCoverageData'
                             }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::SavingsPlansCoverage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostExplorer::SavingsPlansCoverage object:

  $service_obj->Method(Att1 => { Attributes => $value, ..., TimePeriod => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::SavingsPlansCoverage object:

  $result = $service_obj->Method(...);
  $result->Att1->Attributes

=head1 DESCRIPTION

The amount of Savings Plans eligible usage that is covered by Savings
Plans. All calculations consider the On-Demand equivalent of your
Savings Plans usage.

=head1 ATTRIBUTES


=head2 Attributes => CostExplorer_Attributes

  The attribute that applies to a specific C<Dimension>.


=head2 Coverage => CostExplorer_SavingsPlansCoverageData

  The amount of Savings Plans eligible usage that the Savings Plans
covered.


=head2 TimePeriod => CostExplorer_DateInterval

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

