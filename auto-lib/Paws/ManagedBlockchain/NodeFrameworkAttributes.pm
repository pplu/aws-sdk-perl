package Paws::ManagedBlockchain::NodeFrameworkAttributes;
  use Moose;
  has Fabric => (is => 'ro', isa => 'Paws::ManagedBlockchain::NodeFabricAttributes');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::NodeFrameworkAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ManagedBlockchain::NodeFrameworkAttributes object:

  $service_obj->Method(Att1 => { Fabric => $value, ..., Fabric => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ManagedBlockchain::NodeFrameworkAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->Fabric

=head1 DESCRIPTION

Attributes relevant to a peer node on a Managed Blockchain network for
the blockchain framework that the network uses.

=head1 ATTRIBUTES


=head2 Fabric => L<Paws::ManagedBlockchain::NodeFabricAttributes>

  Attributes of Hyperledger Fabric for a peer node on a Managed
Blockchain network that uses Hyperledger Fabric.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ManagedBlockchain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

