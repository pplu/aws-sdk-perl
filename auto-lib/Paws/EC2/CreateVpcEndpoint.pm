
package Paws::EC2::CreateVpcEndpoint;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has PolicyDocument => (is => 'ro', isa => 'Str');
  has PrivateDnsEnabled => (is => 'ro', isa => 'Bool');
  has RouteTableIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'RouteTableId' );
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'SecurityGroupId' );
  has ServiceName => (is => 'ro', isa => 'Str', required => 1);
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'SubnetId' );
  has TagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TagSpecification]', traits => ['NameInRequest'], request_name => 'TagSpecification' );
  has VpcEndpointType => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVpcEndpoint');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreateVpcEndpointResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateVpcEndpoint - Arguments for method CreateVpcEndpoint on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateVpcEndpoint on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateVpcEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateVpcEndpoint.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $CreateVpcEndpointResult = $ec2->CreateVpcEndpoint(
      ServiceName       => 'MyString',
      VpcId             => 'MyVpcId',
      ClientToken       => 'MyString',                      # OPTIONAL
      DryRun            => 1,                               # OPTIONAL
      PolicyDocument    => 'MyString',                      # OPTIONAL
      PrivateDnsEnabled => 1,                               # OPTIONAL
      RouteTableIds     => [ 'MyRouteTableId',    ... ],    # OPTIONAL
      SecurityGroupIds  => [ 'MySecurityGroupId', ... ],    # OPTIONAL
      SubnetIds         => [ 'MySubnetId',        ... ],    # OPTIONAL
      TagSpecifications => [
        {
          ResourceType => 'client-vpn-endpoint'
          , # values: client-vpn-endpoint, customer-gateway, dedicated-host, dhcp-options, egress-only-internet-gateway, elastic-ip, elastic-gpu, export-image-task, export-instance-task, fleet, fpga-image, host-reservation, image, import-image-task, import-snapshot-task, instance, internet-gateway, key-pair, launch-template, local-gateway-route-table-vpc-association, natgateway, network-acl, network-interface, network-insights-analysis, network-insights-path, placement-group, reserved-instances, route-table, security-group, snapshot, spot-fleet-request, spot-instances-request, subnet, traffic-mirror-filter, traffic-mirror-session, traffic-mirror-target, transit-gateway, transit-gateway-attachment, transit-gateway-connect-peer, transit-gateway-multicast-domain, transit-gateway-route-table, volume, vpc, vpc-peering-connection, vpn-connection, vpn-gateway, vpc-flow-log; OPTIONAL
          Tags => [
            {
              Key   => 'MyString',
              Value => 'MyString',
            },
            ...
          ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      VpcEndpointType => 'Interface',    # OPTIONAL
    );

    # Results:
    my $ClientToken = $CreateVpcEndpointResult->ClientToken;
    my $VpcEndpoint = $CreateVpcEndpointResult->VpcEndpoint;

    # Returns a L<Paws::EC2::CreateVpcEndpointResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateVpcEndpoint>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see How to Ensure
Idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 PolicyDocument => Str

(Interface and gateway endpoints) A policy to attach to the endpoint
that controls access to the service. The policy must be in valid JSON
format. If this parameter is not specified, we attach a default policy
that allows full access to the service.



=head2 PrivateDnsEnabled => Bool

(Interface endpoint) Indicates whether to associate a private hosted
zone with the specified VPC. The private hosted zone contains a record
set for the default public DNS name for the service for the Region (for
example, C<kinesis.us-east-1.amazonaws.com>), which resolves to the
private IP addresses of the endpoint network interfaces in the VPC.
This enables you to make requests to the default public DNS name for
the service instead of the public DNS names that are automatically
generated by the VPC endpoint service.

To use a private hosted zone, you must set the following VPC attributes
to C<true>: C<enableDnsHostnames> and C<enableDnsSupport>. Use
ModifyVpcAttribute to set the VPC attributes.

Default: C<true>



=head2 RouteTableIds => ArrayRef[Str|Undef]

(Gateway endpoint) One or more route table IDs.



=head2 SecurityGroupIds => ArrayRef[Str|Undef]

(Interface endpoint) The ID of one or more security groups to associate
with the endpoint network interface.



=head2 B<REQUIRED> ServiceName => Str

The service name. To get a list of available services, use the
DescribeVpcEndpointServices request, or get the name from the service
provider.



=head2 SubnetIds => ArrayRef[Str|Undef]

(Interface and Gateway Load Balancer endpoints) The ID of one or more
subnets in which to create an endpoint network interface. For a Gateway
Load Balancer endpoint, you can specify one subnet only.



=head2 TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]

The tags to associate with the endpoint.



=head2 VpcEndpointType => Str

The type of endpoint.

Default: Gateway

Valid values are: C<"Interface">, C<"Gateway">, C<"GatewayLoadBalancer">

=head2 B<REQUIRED> VpcId => Str

The ID of the VPC in which the endpoint will be used.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateVpcEndpoint in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

