
package Paws::EC2::CreateClientVpnEndpoint;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef Bool/;
  use Paws::EC2::Types qw/EC2_ClientVpnAuthenticationRequest EC2_ConnectionLogOptions EC2_TagSpecification/;
  has AuthenticationOptions => (is => 'ro', isa => ArrayRef[EC2_ClientVpnAuthenticationRequest], required => 1, predicate => 1);
  has ClientCidrBlock => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ClientToken => (is => 'ro', isa => Str, predicate => 1);
  has ConnectionLogOptions => (is => 'ro', isa => EC2_ConnectionLogOptions, required => 1, predicate => 1);
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has DnsServers => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has DryRun => (is => 'ro', isa => Bool, predicate => 1);
  has ServerCertificateArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has TagSpecifications => (is => 'ro', isa => ArrayRef[EC2_TagSpecification], predicate => 1);
  has TransportProtocol => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateClientVpnEndpoint');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::EC2::CreateClientVpnEndpointResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DryRun' => {
                             'type' => 'Bool'
                           },
               'ClientToken' => {
                                  'type' => 'Str'
                                },
               'ClientCidrBlock' => {
                                      'type' => 'Str'
                                    },
               'TransportProtocol' => {
                                        'type' => 'Str'
                                      },
               'AuthenticationOptions' => {
                                            'class' => 'Paws::EC2::ClientVpnAuthenticationRequest',
                                            'type' => 'ArrayRef[EC2_ClientVpnAuthenticationRequest]'
                                          },
               'TagSpecifications' => {
                                        'class' => 'Paws::EC2::TagSpecification',
                                        'type' => 'ArrayRef[EC2_TagSpecification]'
                                      },
               'DnsServers' => {
                                 'type' => 'ArrayRef[Str|Undef]'
                               },
               'ServerCertificateArn' => {
                                           'type' => 'Str'
                                         },
               'ConnectionLogOptions' => {
                                           'class' => 'Paws::EC2::ConnectionLogOptions',
                                           'type' => 'EC2_ConnectionLogOptions'
                                         },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'AuthenticationOptions' => 'Authentication',
                       'TagSpecifications' => 'TagSpecification'
                     },
  'IsRequired' => {
                    'ConnectionLogOptions' => 1,
                    'ClientCidrBlock' => 1,
                    'AuthenticationOptions' => 1,
                    'ServerCertificateArn' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateClientVpnEndpoint - Arguments for method CreateClientVpnEndpoint on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateClientVpnEndpoint on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateClientVpnEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateClientVpnEndpoint.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $CreateClientVpnEndpointResult = $ec2->CreateClientVpnEndpoint(
      AuthenticationOptions => [
        {
          ActiveDirectory => {
            DirectoryId => 'MyString',    # OPTIONAL
          },    # OPTIONAL
          MutualAuthentication => {
            ClientRootCertificateChainArn => 'MyString',    # OPTIONAL
          },    # OPTIONAL
          Type => 'certificate-authentication'
          , # values: certificate-authentication, directory-service-authentication; OPTIONAL
        },
        ...
      ],
      ClientCidrBlock      => 'MyString',
      ConnectionLogOptions => {
        CloudwatchLogGroup  => 'MyString',    # OPTIONAL
        CloudwatchLogStream => 'MyString',    # OPTIONAL
        Enabled             => 1,             # OPTIONAL
      },
      ServerCertificateArn => 'MyString',
      ClientToken          => 'MyString',     # OPTIONAL
      Description          => 'MyString',     # OPTIONAL
      DnsServers           => [
        'MyString', ...                       # OPTIONAL
      ],                                      # OPTIONAL
      DryRun            => 1,                 # OPTIONAL
      TagSpecifications => [
        {
          ResourceType => 'client-vpn-endpoint'
          , # values: client-vpn-endpoint, customer-gateway, dedicated-host, dhcp-options, elastic-ip, fleet, fpga-image, host-reservation, image, instance, internet-gateway, launch-template, natgateway, network-acl, network-interface, reserved-instances, route-table, security-group, snapshot, spot-instances-request, subnet, traffic-mirror-filter, traffic-mirror-session, traffic-mirror-target, transit-gateway, transit-gateway-attachment, transit-gateway-route-table, volume, vpc, vpc-peering-connection, vpn-connection, vpn-gateway; OPTIONAL
          Tags => [
            {
              Key   => 'MyString',    # OPTIONAL
              Value => 'MyString',    # OPTIONAL
            },
            ...
          ],                          # OPTIONAL
        },
        ...
      ],                              # OPTIONAL
      TransportProtocol => 'tcp',     # OPTIONAL
    );

    # Results:
    my $ClientVpnEndpointId =
      $CreateClientVpnEndpointResult->ClientVpnEndpointId;
    my $DnsName = $CreateClientVpnEndpointResult->DnsName;
    my $Status  = $CreateClientVpnEndpointResult->Status;

    # Returns a L<Paws::EC2::CreateClientVpnEndpointResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateClientVpnEndpoint>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AuthenticationOptions => ArrayRef[EC2_ClientVpnAuthenticationRequest]

Information about the authentication method to be used to authenticate
clients.



=head2 B<REQUIRED> ClientCidrBlock => Str

The IPv4 address range, in CIDR notation, from which to assign client
IP addresses. The address range cannot overlap with the local CIDR of
the VPC in which the associated subnet is located, or the routes that
you add manually. The address range cannot be changed after the Client
VPN endpoint has been created. The CIDR block should be /22 or greater.



=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see How to Ensure
Idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).



=head2 B<REQUIRED> ConnectionLogOptions => EC2_ConnectionLogOptions

Information about the client connection logging options.

If you enable client connection logging, data about client connections
is sent to a Cloudwatch Logs log stream. The following information is
logged:

=over

=item *

Client connection requests

=item *

Client connection results (successful and unsuccessful)

=item *

Reasons for unsuccessful client connection requests

=item *

Client connection termination time

=back




=head2 Description => Str

A brief description of the Client VPN endpoint.



=head2 DnsServers => ArrayRef[Str|Undef]

Information about the DNS servers to be used for DNS resolution. A
Client VPN endpoint can have up to two DNS servers. If no DNS server is
specified, the DNS address of the VPC that is to be associated with
Client VPN endpoint is used as the DNS server.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> ServerCertificateArn => Str

The ARN of the server certificate. For more information, see the AWS
Certificate Manager User Guide
(https://docs.aws.amazon.com/acm/latest/userguide/).



=head2 TagSpecifications => ArrayRef[EC2_TagSpecification]

The tags to apply to the Client VPN endpoint during creation.



=head2 TransportProtocol => Str

The transport protocol to be used by the VPN session.

Default value: C<udp>

Valid values are: C<"tcp">, C<"udp">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateClientVpnEndpoint in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

