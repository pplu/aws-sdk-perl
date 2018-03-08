package Paws::CostExplorer::Coverage;
  use Moose;
  has CoverageHours => (is => 'ro', isa => 'Paws::CostExplorer::CoverageHours');
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

  $service_obj->Method(Att1 => { CoverageHours => $value, ..., CoverageHours => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::Coverage object:

  $result = $service_obj->Method(...);
  $result->Att1->CoverageHours

=head1 DESCRIPTION

The amount of instance usage that a reservation covered.

=head1 ATTRIBUTES


=head2 CoverageHours => L<Paws::CostExplorer::CoverageHours>

  The amount of instance usage that a reservation covered, in hours.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

