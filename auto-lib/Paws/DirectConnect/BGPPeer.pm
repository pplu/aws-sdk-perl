# Generated from default/object.tt
package Paws::DirectConnect::BGPPeer;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::DirectConnect::Types qw//;
  has AddressFamily => (is => 'ro', isa => Str);
  has AmazonAddress => (is => 'ro', isa => Str);
  has Asn => (is => 'ro', isa => Int);
  has AuthKey => (is => 'ro', isa => Str);
  has AwsDeviceV2 => (is => 'ro', isa => Str);
  has BgpPeerId => (is => 'ro', isa => Str);
  has BgpPeerState => (is => 'ro', isa => Str);
  has BgpStatus => (is => 'ro', isa => Str);
  has CustomerAddress => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'BgpPeerState' => 'bgpPeerState',
                       'AwsDeviceV2' => 'awsDeviceV2',
                       'CustomerAddress' => 'customerAddress',
                       'BgpStatus' => 'bgpStatus',
                       'AmazonAddress' => 'amazonAddress',
                       'AuthKey' => 'authKey',
                       'AddressFamily' => 'addressFamily',
                       'BgpPeerId' => 'bgpPeerId',
                       'Asn' => 'asn'
                     },
  'types' => {
               'AwsDeviceV2' => {
                                  'type' => 'Str'
                                },
               'BgpPeerState' => {
                                   'type' => 'Str'
                                 },
               'AmazonAddress' => {
                                    'type' => 'Str'
                                  },
               'BgpStatus' => {
                                'type' => 'Str'
                              },
               'CustomerAddress' => {
                                      'type' => 'Str'
                                    },
               'AddressFamily' => {
                                    'type' => 'Str'
                                  },
               'AuthKey' => {
                              'type' => 'Str'
                            },
               'Asn' => {
                          'type' => 'Int'
                        },
               'BgpPeerId' => {
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

Paws::DirectConnect::BGPPeer

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DirectConnect::BGPPeer object:

  $service_obj->Method(Att1 => { AddressFamily => $value, ..., CustomerAddress => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DirectConnect::BGPPeer object:

  $result = $service_obj->Method(...);
  $result->Att1->AddressFamily

=head1 DESCRIPTION

Information about a BGP peer.

=head1 ATTRIBUTES


=head2 AddressFamily => Str

  The address family for the BGP peer.


=head2 AmazonAddress => Str

  The IP address assigned to the Amazon interface.


=head2 Asn => Int

  The autonomous system (AS) number for Border Gateway Protocol (BGP)
configuration.


=head2 AuthKey => Str

  The authentication key for BGP configuration. This string has a minimum
length of 6 characters and and a maximun lenth of 80 characters.


=head2 AwsDeviceV2 => Str

  The Direct Connect endpoint on which the BGP peer terminates.


=head2 BgpPeerId => Str

  The ID of the BGP peer.


=head2 BgpPeerState => Str

  The state of the BGP peer. The following are the possible values:

=over

=item *

C<verifying>: The BGP peering addresses or ASN require validation
before the BGP peer can be created. This state applies only to public
virtual interfaces.

=item *

C<pending>: The BGP peer is created, and remains in this state until it
is ready to be established.

=item *

C<available>: The BGP peer is ready to be established.

=item *

C<deleting>: The BGP peer is being deleted.

=item *

C<deleted>: The BGP peer is deleted and cannot be established.

=back



=head2 BgpStatus => Str

  The status of the BGP peer. The following are the possible values:

=over

=item *

C<up>: The BGP peer is established. This state does not indicate the
state of the routing function. Ensure that you are receiving routes
over the BGP session.

=item *

C<down>: The BGP peer is down.

=item *

C<unknown>: The BGP peer status is not available.

=back



=head2 CustomerAddress => Str

  The IP address assigned to the customer interface.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

