
package Paws::EC2::CreateTransitGatewayPeeringAttachment;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has PeerAccountId => (is => 'ro', isa => 'Str', required => 1);
  has PeerRegion => (is => 'ro', isa => 'Str', required => 1);
  has PeerTransitGatewayId => (is => 'ro', isa => 'Str', required => 1);
  has TagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TagSpecification]', traits => ['NameInRequest'], request_name => 'TagSpecification' );
  has TransitGatewayId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTransitGatewayPeeringAttachment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreateTransitGatewayPeeringAttachmentResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateTransitGatewayPeeringAttachment - Arguments for method CreateTransitGatewayPeeringAttachment on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTransitGatewayPeeringAttachment on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateTransitGatewayPeeringAttachment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTransitGatewayPeeringAttachment.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $CreateTransitGatewayPeeringAttachmentResult =
      $ec2->CreateTransitGatewayPeeringAttachment(
      PeerAccountId        => 'MyString',
      PeerRegion           => 'MyString',
      PeerTransitGatewayId => 'MyString',
      TransitGatewayId     => 'MyTransitGatewayId',
      DryRun               => 1,                      # OPTIONAL
      TagSpecifications    => [
        {
          ResourceType => 'client-vpn-endpoint'
          , # values: client-vpn-endpoint, customer-gateway, dedicated-host, dhcp-options, elastic-ip, fleet, fpga-image, host-reservation, image, instance, internet-gateway, key-pair, launch-template, natgateway, network-acl, network-interface, placement-group, reserved-instances, route-table, security-group, snapshot, spot-fleet-request, spot-instances-request, subnet, traffic-mirror-filter, traffic-mirror-session, traffic-mirror-target, transit-gateway, transit-gateway-attachment, transit-gateway-multicast-domain, transit-gateway-route-table, volume, vpc, vpc-peering-connection, vpn-connection, vpn-gateway; OPTIONAL
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
    my $TransitGatewayPeeringAttachment =
      $CreateTransitGatewayPeeringAttachmentResult
      ->TransitGatewayPeeringAttachment;

   # Returns a L<Paws::EC2::CreateTransitGatewayPeeringAttachmentResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateTransitGatewayPeeringAttachment>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> PeerAccountId => Str

The AWS account ID of the owner of the peer transit gateway.



=head2 B<REQUIRED> PeerRegion => Str

The Region where the peer transit gateway is located.



=head2 B<REQUIRED> PeerTransitGatewayId => Str

The ID of the peer transit gateway with which to create the peering
attachment.



=head2 TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]

The tags to apply to the transit gateway peering attachment.



=head2 B<REQUIRED> TransitGatewayId => Str

The ID of the transit gateway.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTransitGatewayPeeringAttachment in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

