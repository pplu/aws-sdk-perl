
package Paws::EC2::ModifyVpnConnectionOptions;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has LocalIpv4NetworkCidr => (is => 'ro', isa => 'Str');
  has LocalIpv6NetworkCidr => (is => 'ro', isa => 'Str');
  has RemoteIpv4NetworkCidr => (is => 'ro', isa => 'Str');
  has RemoteIpv6NetworkCidr => (is => 'ro', isa => 'Str');
  has VpnConnectionId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyVpnConnectionOptions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ModifyVpnConnectionOptionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyVpnConnectionOptions - Arguments for method ModifyVpnConnectionOptions on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyVpnConnectionOptions on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyVpnConnectionOptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyVpnConnectionOptions.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ModifyVpnConnectionOptionsResult = $ec2->ModifyVpnConnectionOptions(
      VpnConnectionId       => 'MyVpnConnectionId',
      DryRun                => 1,                     # OPTIONAL
      LocalIpv4NetworkCidr  => 'MyString',            # OPTIONAL
      LocalIpv6NetworkCidr  => 'MyString',            # OPTIONAL
      RemoteIpv4NetworkCidr => 'MyString',            # OPTIONAL
      RemoteIpv6NetworkCidr => 'MyString',            # OPTIONAL
    );

    # Results:
    my $VpnConnection = $ModifyVpnConnectionOptionsResult->VpnConnection;

    # Returns a L<Paws::EC2::ModifyVpnConnectionOptionsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyVpnConnectionOptions>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 LocalIpv4NetworkCidr => Str

The IPv4 CIDR on the customer gateway (on-premises) side of the VPN
connection.

Default: C<0.0.0.0/0>



=head2 LocalIpv6NetworkCidr => Str

The IPv6 CIDR on the customer gateway (on-premises) side of the VPN
connection.

Default: C<::/0>



=head2 RemoteIpv4NetworkCidr => Str

The IPv4 CIDR on the AWS side of the VPN connection.

Default: C<0.0.0.0/0>



=head2 RemoteIpv6NetworkCidr => Str

The IPv6 CIDR on the AWS side of the VPN connection.

Default: C<::/0>



=head2 B<REQUIRED> VpnConnectionId => Str

The ID of the Site-to-Site VPN connection.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyVpnConnectionOptions in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

