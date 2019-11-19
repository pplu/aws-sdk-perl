# Generated from default/object.tt
package Paws::CostExplorer::Coverage;
  use Moo;
  use Types::Standard qw//;
  use Paws::CostExplorer::Types qw/CostExplorer_CoverageHours CostExplorer_CoverageCost CostExplorer_CoverageNormalizedUnits/;
  has CoverageCost => (is => 'ro', isa => CostExplorer_CoverageCost);
  has CoverageHours => (is => 'ro', isa => CostExplorer_CoverageHours);
  has CoverageNormalizedUnits => (is => 'ro', isa => CostExplorer_CoverageNormalizedUnits);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CoverageCost' => {
                                   'type' => 'CostExplorer_CoverageCost',
                                   'class' => 'Paws::CostExplorer::CoverageCost'
                                 },
               'CoverageHours' => {
                                    'type' => 'CostExplorer_CoverageHours',
                                    'class' => 'Paws::CostExplorer::CoverageHours'
                                  },
               'CoverageNormalizedUnits' => {
                                              'type' => 'CostExplorer_CoverageNormalizedUnits',
                                              'class' => 'Paws::CostExplorer::CoverageNormalizedUnits'
                                            }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::Coverage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostExplorer::Coverage object:

  $service_obj->Method(Att1 => { CoverageCost => $value, ..., CoverageNormalizedUnits => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::Coverage object:

  $result = $service_obj->Method(...);
  $result->Att1->CoverageCost

=head1 DESCRIPTION

The amount of instance usage that a reservation covered.

=head1 ATTRIBUTES


=head2 CoverageCost => CostExplorer_CoverageCost

  The amount of cost that the reservation covered.


=head2 CoverageHours => CostExplorer_CoverageHours

  The amount of instance usage that the reservation covered, in hours.


=head2 CoverageNormalizedUnits => CostExplorer_CoverageNormalizedUnits

  The amount of instance usage that the reservation covered, in
normalized units.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

