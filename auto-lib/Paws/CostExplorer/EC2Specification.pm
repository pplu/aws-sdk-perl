package Paws::CostExplorer::EC2Specification;
  use Moose;
  has OfferingClass => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::EC2Specification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostExplorer::EC2Specification object:

  $service_obj->Method(Att1 => { OfferingClass => $value, ..., OfferingClass => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::EC2Specification object:

  $result = $service_obj->Method(...);
  $result->Att1->OfferingClass

=head1 DESCRIPTION

The Amazon EC2 hardware specifications that you want AWS to provide
recommendations for.

=head1 ATTRIBUTES


=head2 OfferingClass => Str

  Whether you want a recommendation for standard or convertible
reservations.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

