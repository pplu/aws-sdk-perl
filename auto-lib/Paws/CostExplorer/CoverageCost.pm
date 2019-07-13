package Paws::CostExplorer::CoverageCost;
  use Moose;
  has OnDemandCost => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::CoverageCost

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostExplorer::CoverageCost object:

  $service_obj->Method(Att1 => { OnDemandCost => $value, ..., OnDemandCost => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::CoverageCost object:

  $result = $service_obj->Method(...);
  $result->Att1->OnDemandCost

=head1 DESCRIPTION

How much it cost to run an instance.

=head1 ATTRIBUTES


=head2 OnDemandCost => Str

  How much an On-Demand instance cost.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

