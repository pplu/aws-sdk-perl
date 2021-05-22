
package Paws::EC2::CreateCarrierGateway;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has TagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TagSpecification]', traits => ['NameInRequest'], request_name => 'TagSpecification' );
  has VpcId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCarrierGateway');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreateCarrierGatewayResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateCarrierGateway - Arguments for method CreateCarrierGateway on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCarrierGateway on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateCarrierGateway.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCarrierGateway.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $CreateCarrierGatewayResult = $ec2->CreateCarrierGateway(
      VpcId             => 'MyVpcId',
      ClientToken       => 'MyString',    # OPTIONAL
      DryRun            => 1,             # OPTIONAL
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
      ],        # OPTIONAL
    );

    # Results:
    my $CarrierGateway = $CreateCarrierGatewayResult->CarrierGateway;

    # Returns a L<Paws::EC2::CreateCarrierGatewayResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateCarrierGateway>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see How to Ensure
Idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html).



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]

The tags to associate with the carrier gateway.



=head2 B<REQUIRED> VpcId => Str

The ID of the VPC to associate with the carrier gateway.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCarrierGateway in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

