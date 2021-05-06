
package Paws::EC2::CreateVpnGateway;
  use Moose;
  has AmazonSideAsn => (is => 'ro', isa => 'Int');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Type => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVpnGateway');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreateVpnGatewayResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateVpnGateway - Arguments for method CreateVpnGateway on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateVpnGateway on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateVpnGateway.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateVpnGateway.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $CreateVpnGatewayResult = $ec2->CreateVpnGateway(
      Type             => 'ipsec.1',
      AmazonSideAsn    => 1,             # OPTIONAL
      AvailabilityZone => 'MyString',    # OPTIONAL
      DryRun           => 1,             # OPTIONAL
    );

    # Results:
    my $VpnGateway = $CreateVpnGatewayResult->VpnGateway;

    # Returns a L<Paws::EC2::CreateVpnGatewayResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateVpnGateway>

=head1 ATTRIBUTES


=head2 AmazonSideAsn => Int

A private Autonomous System Number (ASN) for the Amazon side of a BGP
session. If you're using a 16-bit ASN, it must be in the 64512 to 65534
range. If you're using a 32-bit ASN, it must be in the 4200000000 to
4294967294 range.

Default: 64512



=head2 AvailabilityZone => Str

The Availability Zone for the virtual private gateway.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> Type => Str

The type of VPN connection this virtual private gateway supports.

Valid values are: C<"ipsec.1">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateVpnGateway in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

