
package Paws::EC2::CreateTransitGatewayVpcAttachment;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Options => (is => 'ro', isa => 'Paws::EC2::CreateTransitGatewayVpcAttachmentRequestOptions');
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has TagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TagSpecification]');
  has TransitGatewayId => (is => 'ro', isa => 'Str', required => 1);
  has VpcId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTransitGatewayVpcAttachment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreateTransitGatewayVpcAttachmentResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateTransitGatewayVpcAttachment - Arguments for method CreateTransitGatewayVpcAttachment on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTransitGatewayVpcAttachment on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateTransitGatewayVpcAttachment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTransitGatewayVpcAttachment.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $CreateTransitGatewayVpcAttachmentResult =
      $ec2->CreateTransitGatewayVpcAttachment(
      SubnetIds        => [ 'MyString', ... ],
      TransitGatewayId => 'MyString',
      VpcId            => 'MyString',
      DryRun           => 1,                     # OPTIONAL
      Options          => {
        DnsSupport  => 'enable',    # values: enable, disable; OPTIONAL
        Ipv6Support => 'enable',    # values: enable, disable; OPTIONAL
      },    # OPTIONAL
      TagSpecifications => [
        {
          ResourceType => 'customer-gateway'
          , # values: customer-gateway, dedicated-host, dhcp-options, elastic-ip, fleet, fpga-image, image, instance, internet-gateway, launch-template, natgateway, network-acl, network-interface, reserved-instances, route-table, security-group, snapshot, spot-instances-request, subnet, transit-gateway, transit-gateway-attachment, transit-gateway-route-table, volume, vpc, vpc-peering-connection, vpn-connection, vpn-gateway; OPTIONAL
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
    my $TransitGatewayVpcAttachment =
      $CreateTransitGatewayVpcAttachmentResult->TransitGatewayVpcAttachment;

    # Returns a L<Paws::EC2::CreateTransitGatewayVpcAttachmentResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateTransitGatewayVpcAttachment>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Options => L<Paws::EC2::CreateTransitGatewayVpcAttachmentRequestOptions>

The VPC attachment options.



=head2 B<REQUIRED> SubnetIds => ArrayRef[Str|Undef]

The IDs of one or more subnets. You can specify only one subnet per
Availability Zone. You must specify at least one subnet, but we
recommend that you specify two subnets for better availability. The
transit gateway uses one IP address from each specified subnet.



=head2 TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]

The tags to apply to the VPC attachment.



=head2 B<REQUIRED> TransitGatewayId => Str

The ID of the transit gateway.



=head2 B<REQUIRED> VpcId => Str

The ID of the VPC.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTransitGatewayVpcAttachment in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

