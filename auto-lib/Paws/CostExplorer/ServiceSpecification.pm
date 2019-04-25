package Paws::CostExplorer::ServiceSpecification;
  use Moose;
  has EC2Specification => (is => 'ro', isa => 'Paws::CostExplorer::EC2Specification');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::ServiceSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostExplorer::ServiceSpecification object:

  $service_obj->Method(Att1 => { EC2Specification => $value, ..., EC2Specification => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::ServiceSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->EC2Specification

=head1 DESCRIPTION

Hardware specifications for the service that you want recommendations
for.

=head1 ATTRIBUTES


=head2 EC2Specification => L<Paws::CostExplorer::EC2Specification>

  The Amazon EC2 hardware specifications that you want AWS to provide
recommendations for.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

