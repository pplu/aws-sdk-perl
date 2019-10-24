# Generated from default/object.tt
package Paws::ManagedBlockchain::MemberFrameworkAttributes;
  use Moo;
  use Types::Standard qw//;
  use Paws::ManagedBlockchain::Types qw/ManagedBlockchain_MemberFabricAttributes/;
  has Fabric => (is => 'ro', isa => ManagedBlockchain_MemberFabricAttributes);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Fabric' => {
                             'class' => 'Paws::ManagedBlockchain::MemberFabricAttributes',
                             'type' => 'ManagedBlockchain_MemberFabricAttributes'
                           }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::MemberFrameworkAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ManagedBlockchain::MemberFrameworkAttributes object:

  $service_obj->Method(Att1 => { Fabric => $value, ..., Fabric => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ManagedBlockchain::MemberFrameworkAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->Fabric

=head1 DESCRIPTION

Attributes relevant to a member for the blockchain framework that the
Managed Blockchain network uses.

=head1 ATTRIBUTES


=head2 Fabric => ManagedBlockchain_MemberFabricAttributes

  Attributes of Hyperledger Fabric relevant to a member on a Managed
Blockchain network that uses Hyperledger Fabric.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ManagedBlockchain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

