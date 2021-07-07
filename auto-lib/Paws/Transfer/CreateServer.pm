
package Paws::Transfer::CreateServer;
  use Moose;
  has Certificate => (is => 'ro', isa => 'Str');
  has Domain => (is => 'ro', isa => 'Str');
  has EndpointDetails => (is => 'ro', isa => 'Paws::Transfer::EndpointDetails');
  has EndpointType => (is => 'ro', isa => 'Str');
  has HostKey => (is => 'ro', isa => 'Str');
  has IdentityProviderDetails => (is => 'ro', isa => 'Paws::Transfer::IdentityProviderDetails');
  has IdentityProviderType => (is => 'ro', isa => 'Str');
  has LoggingRole => (is => 'ro', isa => 'Str');
  has Protocols => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SecurityPolicyName => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Transfer::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateServer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transfer::CreateServerResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::CreateServer - Arguments for method CreateServer on L<Paws::Transfer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateServer on the
L<AWS Transfer Family|Paws::Transfer> service. Use the attributes of this class
as arguments to method CreateServer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateServer.

=head1 SYNOPSIS

    my $transfer = Paws->service('Transfer');
    my $CreateServerResponse = $transfer->CreateServer(
      Certificate     => 'MyCertificate',    # OPTIONAL
      Domain          => 'S3',               # OPTIONAL
      EndpointDetails => {
        AddressAllocationIds => [ 'MyAddressAllocationId', ... ],    # OPTIONAL
        SecurityGroupIds     => [
          'MySecurityGroupId', ...    # min: 11, max: 20
        ],    # OPTIONAL
        SubnetIds     => [ 'MySubnetId', ... ],    # OPTIONAL
        VpcEndpointId => 'MyVpcEndpointId',        # min: 22, max: 22; OPTIONAL
        VpcId         => 'MyVpcId',                # OPTIONAL
      },    # OPTIONAL
      EndpointType            => 'PUBLIC',       # OPTIONAL
      HostKey                 => 'MyHostKey',    # OPTIONAL
      IdentityProviderDetails => {
        InvocationRole => 'MyRole',              # min: 20, max: 2048; OPTIONAL
        Url            => 'MyUrl',               # max: 255; OPTIONAL
      },    # OPTIONAL
      IdentityProviderType => 'SERVICE_MANAGED',    # OPTIONAL
      LoggingRole          => 'MyRole',             # OPTIONAL
      Protocols            => [
        'SFTP', ...                                 # values: SFTP, FTP, FTPS
      ],    # OPTIONAL
      SecurityPolicyName => 'MySecurityPolicyName',    # OPTIONAL
      Tags               => [
        {
          Key   => 'MyTagKey',      # max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $ServerId = $CreateServerResponse->ServerId;

    # Returns a L<Paws::Transfer::CreateServerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transfer/CreateServer>

=head1 ATTRIBUTES


=head2 Certificate => Str

The Amazon Resource Name (ARN) of the AWS Certificate Manager (ACM)
certificate. Required when C<Protocols> is set to C<FTPS>.

To request a new public certificate, see Request a public certificate
(https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-request-public.html)
in the I< AWS Certificate Manager User Guide>.

To import an existing certificate into ACM, see Importing certificates
into ACM
(https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html)
in the I< AWS Certificate Manager User Guide>.

To request a private certificate to use FTPS through private IP
addresses, see Request a private certificate
(https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-request-private.html)
in the I< AWS Certificate Manager User Guide>.

Certificates with the following cryptographic algorithms and key sizes
are supported:

=over

=item *

2048-bit RSA (RSA_2048)

=item *

4096-bit RSA (RSA_4096)

=item *

Elliptic Prime Curve 256 bit (EC_prime256v1)

=item *

Elliptic Prime Curve 384 bit (EC_secp384r1)

=item *

Elliptic Prime Curve 521 bit (EC_secp521r1)

=back

The certificate must be a valid SSL/TLS X.509 version 3 certificate
with FQDN or IP address specified and information about the issuer.



=head2 Domain => Str



Valid values are: C<"S3">, C<"EFS">

=head2 EndpointDetails => L<Paws::Transfer::EndpointDetails>

The virtual private cloud (VPC) endpoint settings that are configured
for your server. When you host your endpoint within your VPC, you can
make it accessible only to resources within your VPC, or you can attach
Elastic IPs and make it accessible to clients over the internet. Your
VPC's default security groups are automatically assigned to your
endpoint.



=head2 EndpointType => Str

The type of VPC endpoint that you want your server to connect to. You
can choose to connect to the public internet or a VPC endpoint. With a
VPC endpoint, you can restrict access to your server and resources only
within your VPC.

It is recommended that you use C<VPC> as the C<EndpointType>. With this
endpoint type, you have the option to directly associate up to three
Elastic IPv4 addresses (BYO IP included) with your server's endpoint
and use VPC security groups to restrict traffic by the client's public
IP address. This is not possible with C<EndpointType> set to
C<VPC_ENDPOINT>.

Valid values are: C<"PUBLIC">, C<"VPC">, C<"VPC_ENDPOINT">

=head2 HostKey => Str

The RSA private key as generated by the C<ssh-keygen -N "" -m PEM -f
my-new-server-key> command.

If you aren't planning to migrate existing users from an existing
SFTP-enabled server to a new server, don't update the host key.
Accidentally changing a server's host key can be disruptive.

For more information, see Change the host key for your SFTP-enabled
server
(https://docs.aws.amazon.com/transfer/latest/userguide/edit-server-config.html#configuring-servers-change-host-key)
in the I<AWS Transfer Family User Guide>.



=head2 IdentityProviderDetails => L<Paws::Transfer::IdentityProviderDetails>

Required when C<IdentityProviderType> is set to C<API_GATEWAY>. Accepts
an array containing all of the information required to call a
customer-supplied authentication API, including the API Gateway URL.
Not required when C<IdentityProviderType> is set to C<SERVICE_MANAGED>.



=head2 IdentityProviderType => Str

Specifies the mode of authentication for a server. The default value is
C<SERVICE_MANAGED>, which allows you to store and access user
credentials within the AWS Transfer Family service. Use the
C<API_GATEWAY> value to integrate with an identity provider of your
choosing. The C<API_GATEWAY> setting requires you to provide an API
Gateway endpoint URL to call for authentication using the
C<IdentityProviderDetails> parameter.

Valid values are: C<"SERVICE_MANAGED">, C<"API_GATEWAY">

=head2 LoggingRole => Str

Allows the service to write your users' activity to your Amazon
CloudWatch logs for monitoring and auditing purposes.



=head2 Protocols => ArrayRef[Str|Undef]

Specifies the file transfer protocol or protocols over which your file
transfer protocol client can connect to your server's endpoint. The
available protocols are:

=over

=item *

C<SFTP> (Secure Shell (SSH) File Transfer Protocol): File transfer over
SSH

=item *

C<FTPS> (File Transfer Protocol Secure): File transfer with TLS
encryption

=item *

C<FTP> (File Transfer Protocol): Unencrypted file transfer

=back

If you select C<FTPS>, you must choose a certificate stored in AWS
Certificate Manager (ACM) which will be used to identify your server
when clients connect to it over FTPS.

If C<Protocol> includes either C<FTP> or C<FTPS>, then the
C<EndpointType> must be C<VPC> and the C<IdentityProviderType> must be
C<API_GATEWAY>.

If C<Protocol> includes C<FTP>, then C<AddressAllocationIds> cannot be
associated.

If C<Protocol> is set only to C<SFTP>, the C<EndpointType> can be set
to C<PUBLIC> and the C<IdentityProviderType> can be set to
C<SERVICE_MANAGED>.



=head2 SecurityPolicyName => Str

Specifies the name of the security policy that is attached to the
server.



=head2 Tags => ArrayRef[L<Paws::Transfer::Tag>]

Key-value pairs that can be used to group and search for servers.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateServer in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

