package Paws::EC2::AuthorizationRule;
  use Moo;  use Types::Standard qw/Bool Str/;
  use Paws::EC2::Types qw/EC2_ClientVpnAuthorizationRuleStatus/;
  has AccessAll => (is => 'ro', isa => Bool);
  has ClientVpnEndpointId => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has DestinationCidr => (is => 'ro', isa => Str);
  has GroupId => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => EC2_ClientVpnAuthorizationRuleStatus);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AccessAll' => {
                                'type' => 'Bool'
                              },
               'GroupId' => {
                              'type' => 'Str'
                            },
               'Status' => {
                             'class' => 'Paws::EC2::ClientVpnAuthorizationRuleStatus',
                             'type' => 'EC2_ClientVpnAuthorizationRuleStatus'
                           },
               'DestinationCidr' => {
                                      'type' => 'Str'
                                    },
               'ClientVpnEndpointId' => {
                                          'type' => 'Str'
                                        },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'AccessAll' => 'accessAll',
                       'GroupId' => 'groupId',
                       'Status' => 'status',
                       'DestinationCidr' => 'destinationCidr',
                       'ClientVpnEndpointId' => 'clientVpnEndpointId',
                       'Description' => 'description'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AuthorizationRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::AuthorizationRule object:

  $service_obj->Method(Att1 => { AccessAll => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::AuthorizationRule object:

  $result = $service_obj->Method(...);
  $result->Att1->AccessAll

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AccessAll => Bool

  Indicates whether the authorization rule grants access to all clients.


=head2 ClientVpnEndpointId => Str

  The ID of the Client VPN endpoint with which the authorization rule is
associated.


=head2 Description => Str

  A brief description of the authorization rule.


=head2 DestinationCidr => Str

  The IPv4 address range, in CIDR notation, of the network to which the
authorization rule applies.


=head2 GroupId => Str

  The ID of the Active Directory group to which the authorization rule
grants access.


=head2 Status => EC2_ClientVpnAuthorizationRuleStatus

  The current state of the authorization rule.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
