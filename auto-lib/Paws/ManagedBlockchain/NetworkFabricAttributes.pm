package Paws::ManagedBlockchain::NetworkFabricAttributes;
  use Moose;
  has Edition => (is => 'ro', isa => 'Str');
  has OrderingServiceEndpoint => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::NetworkFabricAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ManagedBlockchain::NetworkFabricAttributes object:

  $service_obj->Method(Att1 => { Edition => $value, ..., OrderingServiceEndpoint => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ManagedBlockchain::NetworkFabricAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->Edition

=head1 DESCRIPTION

Attributes of Hyperledger Fabric for a network.

=head1 ATTRIBUTES


=head2 Edition => Str

  The edition of Amazon Managed Blockchain that Hyperledger Fabric uses.
For more information, see Amazon Managed Blockchain Pricing
(https://aws.amazon.com/managed-blockchain/pricing/).


=head2 OrderingServiceEndpoint => Str

  The endpoint of the ordering service for the network.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ManagedBlockchain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

