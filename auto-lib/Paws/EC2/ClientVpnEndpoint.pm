package Paws::EC2::ClientVpnEndpoint;
  use Moo;  use Types::Standard qw/ArrayRef Str Undef Bool/;
  use Paws::EC2::Types qw/EC2_Tag EC2_ConnectionLogResponseOptions EC2_AssociatedTargetNetwork EC2_ClientVpnEndpointStatus EC2_ClientVpnAuthentication/;
  has AssociatedTargetNetworks => (is => 'ro', isa => ArrayRef[EC2_AssociatedTargetNetwork]);
  has AuthenticationOptions => (is => 'ro', isa => ArrayRef[EC2_ClientVpnAuthentication]);
  has ClientCidrBlock => (is => 'ro', isa => Str);
  has ClientVpnEndpointId => (is => 'ro', isa => Str);
  has ConnectionLogOptions => (is => 'ro', isa => EC2_ConnectionLogResponseOptions);
  has CreationTime => (is => 'ro', isa => Str);
  has DeletionTime => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has DnsName => (is => 'ro', isa => Str);
  has DnsServers => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has ServerCertificateArn => (is => 'ro', isa => Str);
  has SplitTunnel => (is => 'ro', isa => Bool);
  has Status => (is => 'ro', isa => EC2_ClientVpnEndpointStatus);
  has Tags => (is => 'ro', isa => ArrayRef[EC2_Tag]);
  has TransportProtocol => (is => 'ro', isa => Str);
  has VpnProtocol => (is => 'ro', isa => Str);

      sub params_map {
    our $Params_map ||= {
  'types' => {
               'ClientCidrBlock' => {
                                      'type' => 'Str'
                                    },
               'DnsName' => {
                              'type' => 'Str'
                            },
               'Status' => {
                             'class' => 'Paws::EC2::ClientVpnEndpointStatus',
                             'type' => 'EC2_ClientVpnEndpointStatus'
                           },
               'DnsServers' => {
                                 'type' => 'ArrayRef[Str|Undef]'
                               },
               'SplitTunnel' => {
                                  'type' => 'Bool'
                                },
               'ConnectionLogOptions' => {
                                           'class' => 'Paws::EC2::ConnectionLogResponseOptions',
                                           'type' => 'EC2_ConnectionLogResponseOptions'
                                         },
               'VpnProtocol' => {
                                  'type' => 'Str'
                                },
               'AssociatedTargetNetworks' => {
                                               'class' => 'Paws::EC2::AssociatedTargetNetwork',
                                               'type' => 'ArrayRef[EC2_AssociatedTargetNetwork]'
                                             },
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'AuthenticationOptions' => {
                                            'class' => 'Paws::EC2::ClientVpnAuthentication',
                                            'type' => 'ArrayRef[EC2_ClientVpnAuthentication]'
                                          },
               'TransportProtocol' => {
                                        'type' => 'Str'
                                      },
               'ServerCertificateArn' => {
                                           'type' => 'Str'
                                         },
               'DeletionTime' => {
                                   'type' => 'Str'
                                 },
               'ClientVpnEndpointId' => {
                                          'type' => 'Str'
                                        },
               'Tags' => {
                           'class' => 'Paws::EC2::Tag',
                           'type' => 'ArrayRef[EC2_Tag]'
                         },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'ClientCidrBlock' => 'clientCidrBlock',
                       'DnsName' => 'dnsName',
                       'Status' => 'status',
                       'DnsServers' => 'dnsServer',
                       'SplitTunnel' => 'splitTunnel',
                       'ConnectionLogOptions' => 'connectionLogOptions',
                       'VpnProtocol' => 'vpnProtocol',
                       'AssociatedTargetNetworks' => 'associatedTargetNetwork',
                       'CreationTime' => 'creationTime',
                       'AuthenticationOptions' => 'authenticationOptions',
                       'TransportProtocol' => 'transportProtocol',
                       'ServerCertificateArn' => 'serverCertificateArn',
                       'DeletionTime' => 'deletionTime',
                       'ClientVpnEndpointId' => 'clientVpnEndpointId',
                       'Tags' => 'tagSet',
                       'Description' => 'description'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ClientVpnEndpoint

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ClientVpnEndpoint object:

  $service_obj->Method(Att1 => { AssociatedTargetNetworks => $value, ..., VpnProtocol => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ClientVpnEndpoint object:

  $result = $service_obj->Method(...);
  $result->Att1->AssociatedTargetNetworks

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AssociatedTargetNetworks => ArrayRef[EC2_AssociatedTargetNetwork]

  Information about the associated target networks. A target network is a
subnet in a VPC.


=head2 AuthenticationOptions => ArrayRef[EC2_ClientVpnAuthentication]

  Information about the authentication method used by the Client VPN
endpoint.


=head2 ClientCidrBlock => Str

  The IPv4 address range, in CIDR notation, from which client IP
addresses are assigned.


=head2 ClientVpnEndpointId => Str

  The ID of the Client VPN endpoint.


=head2 ConnectionLogOptions => EC2_ConnectionLogResponseOptions

  Information about the client connection logging options for the Client
VPN endpoint.


=head2 CreationTime => Str

  The date and time the Client VPN endpoint was created.


=head2 DeletionTime => Str

  The date and time the Client VPN endpoint was deleted, if applicable.


=head2 Description => Str

  A brief description of the endpoint.


=head2 DnsName => Str

  The DNS name to be used by clients when connecting to the Client VPN
endpoint.


=head2 DnsServers => ArrayRef[Str|Undef]

  Information about the DNS servers to be used for DNS resolution.


=head2 ServerCertificateArn => Str

  The ARN of the server certificate.


=head2 SplitTunnel => Bool

  Indicates whether VPN split tunneling is supported.


=head2 Status => EC2_ClientVpnEndpointStatus

  The current state of the Client VPN endpoint.


=head2 Tags => ArrayRef[EC2_Tag]

  Any tags assigned to the Client VPN endpoint.


=head2 TransportProtocol => Str

  The transport protocol used by the Client VPN endpoint.


=head2 VpnProtocol => Str

  The protocol used by the VPN session.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
