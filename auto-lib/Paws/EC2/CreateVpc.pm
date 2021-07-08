
package Paws::EC2::CreateVpc;
  use Moose;
  has AmazonProvidedIpv6CidrBlock => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'amazonProvidedIpv6CidrBlock' );
  has CidrBlock => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has InstanceTenancy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceTenancy' );
  has Ipv6CidrBlock => (is => 'ro', isa => 'Str');
  has Ipv6CidrBlockNetworkBorderGroup => (is => 'ro', isa => 'Str');
  has Ipv6Pool => (is => 'ro', isa => 'Str');
  has TagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TagSpecification]', traits => ['NameInRequest'], request_name => 'TagSpecification' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVpc');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreateVpcResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateVpc - Arguments for method CreateVpc on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateVpc on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateVpc.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateVpc.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To create a VPC
    # This example creates a VPC with the specified CIDR block.
    my $CreateVpcResult = $ec2->CreateVpc( 'CidrBlock' => '10.0.0.0/16' );

    # Results:
    my $Vpc = $CreateVpcResult->Vpc;

    # Returns a L<Paws::EC2::CreateVpcResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateVpc>

=head1 ATTRIBUTES


=head2 AmazonProvidedIpv6CidrBlock => Bool

Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length
for the VPC. You cannot specify the range of IP addresses, or the size
of the CIDR block.



=head2 B<REQUIRED> CidrBlock => Str

The IPv4 network range for the VPC, in CIDR notation. For example,
C<10.0.0.0/16>. We modify the specified CIDR block to its canonical
form; for example, if you specify C<100.68.0.18/18>, we modify it to
C<100.68.0.0/18>.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 InstanceTenancy => Str

The tenancy options for instances launched into the VPC. For
C<default>, instances are launched with shared tenancy by default. You
can launch instances with any tenancy into a shared tenancy VPC. For
C<dedicated>, instances are launched as dedicated tenancy instances by
default. You can only launch instances with a tenancy of C<dedicated>
or C<host> into a dedicated tenancy VPC.

B<Important:> The C<host> value cannot be used with this parameter. Use
the C<default> or C<dedicated> values only.

Default: C<default>

Valid values are: C<"default">, C<"dedicated">, C<"host">

=head2 Ipv6CidrBlock => Str

The IPv6 CIDR block from the IPv6 address pool. You must also specify
C<Ipv6Pool> in the request.

To let Amazon choose the IPv6 CIDR block for you, omit this parameter.



=head2 Ipv6CidrBlockNetworkBorderGroup => Str

The name of the location from which we advertise the IPV6 CIDR block.
Use this parameter to limit the address to this location.

You must set C<AmazonProvidedIpv6CidrBlock> to C<true> to use this
parameter.



=head2 Ipv6Pool => Str

The ID of an IPv6 address pool from which to allocate the IPv6 CIDR
block.



=head2 TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]

The tags to assign to the VPC.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateVpc in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

