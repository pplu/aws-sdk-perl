
package Paws::EC2::ProvisionByoipCidr;
  use Moose;
  has Cidr => (is => 'ro', isa => 'Str', required => 1);
  has CidrAuthorizationContext => (is => 'ro', isa => 'Paws::EC2::CidrAuthorizationContext');
  has Description => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has PoolTagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TagSpecification]', traits => ['NameInRequest'], request_name => 'PoolTagSpecification' );
  has PubliclyAdvertisable => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ProvisionByoipCidr');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ProvisionByoipCidrResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ProvisionByoipCidr - Arguments for method ProvisionByoipCidr on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ProvisionByoipCidr on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ProvisionByoipCidr.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ProvisionByoipCidr.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ProvisionByoipCidrResult = $ec2->ProvisionByoipCidr(
      Cidr                     => 'MyString',
      CidrAuthorizationContext => {
        Message   => 'MyString',
        Signature => 'MyString',

      },    # OPTIONAL
      Description           => 'MyString',    # OPTIONAL
      DryRun                => 1,             # OPTIONAL
      PoolTagSpecifications => [
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
      PubliclyAdvertisable => 1,    # OPTIONAL
    );

    # Results:
    my $ByoipCidr = $ProvisionByoipCidrResult->ByoipCidr;

    # Returns a L<Paws::EC2::ProvisionByoipCidrResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ProvisionByoipCidr>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Cidr => Str

The public IPv4 or IPv6 address range, in CIDR notation. The most
specific IPv4 prefix that you can specify is /24. The most specific
IPv6 prefix you can specify is /56. The address range cannot overlap
with another address range that you've brought to this or another
Region.



=head2 CidrAuthorizationContext => L<Paws::EC2::CidrAuthorizationContext>

A signed document that proves that you are authorized to bring the
specified IP address range to Amazon using BYOIP.



=head2 Description => Str

A description for the address range and the address pool.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 PoolTagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]

The tags to apply to the address pool.



=head2 PubliclyAdvertisable => Bool

(IPv6 only) Indicate whether the address range will be publicly
advertised to the internet.

Default: true




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ProvisionByoipCidr in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

