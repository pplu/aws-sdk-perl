
package Paws::EC2::CreateTransitGatewayConnectPeer;
  use Moose;
  has BgpOptions => (is => 'ro', isa => 'Paws::EC2::TransitGatewayConnectRequestBgpOptions');
  has DryRun => (is => 'ro', isa => 'Bool');
  has InsideCidrBlocks => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has PeerAddress => (is => 'ro', isa => 'Str', required => 1);
  has TagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TagSpecification]', traits => ['NameInRequest'], request_name => 'TagSpecification' );
  has TransitGatewayAddress => (is => 'ro', isa => 'Str');
  has TransitGatewayAttachmentId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTransitGatewayConnectPeer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreateTransitGatewayConnectPeerResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateTransitGatewayConnectPeer - Arguments for method CreateTransitGatewayConnectPeer on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTransitGatewayConnectPeer on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateTransitGatewayConnectPeer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTransitGatewayConnectPeer.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $CreateTransitGatewayConnectPeerResult =
      $ec2->CreateTransitGatewayConnectPeer(
      InsideCidrBlocks           => [ 'MyString', ... ],
      PeerAddress                => 'MyString',
      TransitGatewayAttachmentId => 'MyTransitGatewayAttachmentId',
      BgpOptions                 => {
        PeerAsn => 1,    # OPTIONAL
      },    # OPTIONAL
      DryRun            => 1,    # OPTIONAL
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
      TransitGatewayAddress => 'MyString',    # OPTIONAL
      );

    # Results:
    my $TransitGatewayConnectPeer =
      $CreateTransitGatewayConnectPeerResult->TransitGatewayConnectPeer;

    # Returns a L<Paws::EC2::CreateTransitGatewayConnectPeerResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateTransitGatewayConnectPeer>

=head1 ATTRIBUTES


=head2 BgpOptions => L<Paws::EC2::TransitGatewayConnectRequestBgpOptions>

The BGP options for the Connect peer.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> InsideCidrBlocks => ArrayRef[Str|Undef]

The range of inside IP addresses that are used for BGP peering. You
must specify a size /29 IPv4 CIDR block from the C<169.254.0.0/16>
range. The first address from the range must be configured on the
appliance as the BGP IP address. You can also optionally specify a size
/125 IPv6 CIDR block from the C<fd00::/8> range.



=head2 B<REQUIRED> PeerAddress => Str

The peer IP address (GRE outer IP address) on the appliance side of the
Connect peer.



=head2 TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]

The tags to apply to the Connect peer.



=head2 TransitGatewayAddress => Str

The peer IP address (GRE outer IP address) on the transit gateway side
of the Connect peer, which must be specified from a transit gateway
CIDR block. If not specified, Amazon automatically assigns the first
available IP address from the transit gateway CIDR block.



=head2 B<REQUIRED> TransitGatewayAttachmentId => Str

The ID of the Connect attachment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTransitGatewayConnectPeer in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

