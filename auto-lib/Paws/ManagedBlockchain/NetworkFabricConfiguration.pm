package Paws::ManagedBlockchain::NetworkFabricConfiguration;
  use Moose;
  has Edition => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::NetworkFabricConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ManagedBlockchain::NetworkFabricConfiguration object:

  $service_obj->Method(Att1 => { Edition => $value, ..., Edition => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ManagedBlockchain::NetworkFabricConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Edition

=head1 DESCRIPTION

Hyperledger Fabric configuration properties for the network.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Edition => Str

  The edition of Amazon Managed Blockchain that the network uses. For
more information, see Amazon Managed Blockchain Pricing
(https://aws.amazon.com/managed-blockchain/pricing/).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ManagedBlockchain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

