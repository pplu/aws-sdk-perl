package Paws::CostExplorer::Coverage;
  use Moose;
  has CoverageCost => (is => 'ro', isa => 'Paws::CostExplorer::CoverageCost');
  has CoverageHours => (is => 'ro', isa => 'Paws::CostExplorer::CoverageHours');
  has CoverageNormalizedUnits => (is => 'ro', isa => 'Paws::CostExplorer::CoverageNormalizedUnits');
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


=head2 CoverageCost => L<Paws::CostExplorer::CoverageCost>

  The amount of cost that the reservation covered.


=head2 CoverageHours => L<Paws::CostExplorer::CoverageHours>

  The amount of instance usage that the reservation covered, in hours.


=head2 CoverageNormalizedUnits => L<Paws::CostExplorer::CoverageNormalizedUnits>

  The amount of instance usage that the reservation covered, in
normalized units.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

