# Generated from default/object.tt
package Paws::ManagedBlockchain::MemberFabricAttributes;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ManagedBlockchain::Types qw//;
  has AdminUsername => (is => 'ro', isa => Str);
  has CaEndpoint => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AdminUsername' => {
                                    'type' => 'Str'
                                  },
               'CaEndpoint' => {
                                 'type' => 'Str'
                               }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::MemberFabricAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ManagedBlockchain::MemberFabricAttributes object:

  $service_obj->Method(Att1 => { AdminUsername => $value, ..., CaEndpoint => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ManagedBlockchain::MemberFabricAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->AdminUsername

=head1 DESCRIPTION

Attributes of Hyperledger Fabric for a member in a Managed Blockchain
network using the Hyperledger Fabric framework.

=head1 ATTRIBUTES


=head2 AdminUsername => Str

  The user name for the initial administrator user for the member.


=head2 CaEndpoint => Str

  The endpoint used to access the member's certificate authority.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ManagedBlockchain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

