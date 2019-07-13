
package Paws::EC2::ModifyClientVpnEndpoint;
  use Moose;
  has ClientVpnEndpointId => (is => 'ro', isa => 'Str', required => 1);
  has ConnectionLogOptions => (is => 'ro', isa => 'Paws::EC2::ConnectionLogOptions');
  has Description => (is => 'ro', isa => 'Str');
  has DnsServers => (is => 'ro', isa => 'Paws::EC2::DnsServersOptionsModifyStructure');
  has DryRun => (is => 'ro', isa => 'Bool');
  has ServerCertificateArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyClientVpnEndpoint');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ModifyClientVpnEndpointResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyClientVpnEndpoint - Arguments for method ModifyClientVpnEndpoint on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyClientVpnEndpoint on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyClientVpnEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyClientVpnEndpoint.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ModifyClientVpnEndpointResult = $ec2->ModifyClientVpnEndpoint(
      ClientVpnEndpointId  => 'MyString',
      ConnectionLogOptions => {
        CloudwatchLogGroup  => 'MyString',
        CloudwatchLogStream => 'MyString',
        Enabled             => 1,            # OPTIONAL
      },    # OPTIONAL
      Description => 'MyString',    # OPTIONAL
      DnsServers  => {
        CustomDnsServers => [ 'MyString', ... ],    # OPTIONAL
        Enabled          => 1,                      # OPTIONAL
      },    # OPTIONAL
      DryRun               => 1,             # OPTIONAL
      ServerCertificateArn => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Return = $ModifyClientVpnEndpointResult->Return;

    # Returns a L<Paws::EC2::ModifyClientVpnEndpointResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyClientVpnEndpoint>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientVpnEndpointId => Str

The ID of the Client VPN endpoint to modify.



=head2 ConnectionLogOptions => L<Paws::EC2::ConnectionLogOptions>

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



=head2 DnsServers => L<Paws::EC2::DnsServersOptionsModifyStructure>

Information about the DNS servers to be used by Client VPN connections.
A Client VPN endpoint can have up to two DNS servers.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 ServerCertificateArn => Str

The ARN of the server certificate to be used. The server certificate
must be provisioned in AWS Certificate Manager (ACM).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyClientVpnEndpoint in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

