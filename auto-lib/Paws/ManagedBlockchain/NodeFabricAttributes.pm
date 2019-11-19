# Generated from default/object.tt
package Paws::ManagedBlockchain::NodeFabricAttributes;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ManagedBlockchain::Types qw//;
  has PeerEndpoint => (is => 'ro', isa => Str);
  has PeerEventEndpoint => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PeerEndpoint' => {
                                   'type' => 'Str'
                                 },
               'PeerEventEndpoint' => {
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

Paws::ManagedBlockchain::NodeFabricAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ManagedBlockchain::NodeFabricAttributes object:

  $service_obj->Method(Att1 => { PeerEndpoint => $value, ..., PeerEventEndpoint => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ManagedBlockchain::NodeFabricAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->PeerEndpoint

=head1 DESCRIPTION

Attributes of Hyperledger Fabric for a peer node on a Managed
Blockchain network that uses Hyperledger Fabric.

=head1 ATTRIBUTES


=head2 PeerEndpoint => Str

  The endpoint that identifies the peer node for all services except peer
channel-based event services.


=head2 PeerEventEndpoint => Str

  The endpoint that identifies the peer node for peer channel-based event
services.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ManagedBlockchain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

