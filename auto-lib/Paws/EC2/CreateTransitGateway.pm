
package Paws::EC2::CreateTransitGateway;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef/;
  use Paws::EC2::Types qw/EC2_TransitGatewayRequestOptions EC2_TagSpecification/;
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has DryRun => (is => 'ro', isa => Bool, predicate => 1);
  has Options => (is => 'ro', isa => EC2_TransitGatewayRequestOptions, predicate => 1);
  has TagSpecifications => (is => 'ro', isa => ArrayRef[EC2_TagSpecification], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateTransitGateway');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::EC2::CreateTransitGatewayResult');
  class_has _result_key => (isa => Str, is => 'ro');

      sub params_map {
    our $Params_map ||= {
  'types' => {
               'DryRun' => {
                             'type' => 'Bool'
                           },
               'Options' => {
                              'class' => 'Paws::EC2::TransitGatewayRequestOptions',
                              'type' => 'EC2_TransitGatewayRequestOptions'
                            },
               'TagSpecifications' => {
                                        'class' => 'Paws::EC2::TagSpecification',
                                        'type' => 'ArrayRef[EC2_TagSpecification]'
                                      },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'TagSpecifications' => 'TagSpecification'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateTransitGateway - Arguments for method CreateTransitGateway on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTransitGateway on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateTransitGateway.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTransitGateway.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $CreateTransitGatewayResult = $ec2->CreateTransitGateway(
      Description => 'MyString',    # OPTIONAL
      DryRun      => 1,             # OPTIONAL
      Options     => {
        AmazonSideAsn => 1,         # OPTIONAL
        AutoAcceptSharedAttachments =>
          'enable',                 # values: enable, disable; OPTIONAL
        DefaultRouteTableAssociation =>
          'enable',                 # values: enable, disable; OPTIONAL
        DefaultRouteTablePropagation =>
          'enable',                 # values: enable, disable; OPTIONAL
        DnsSupport     => 'enable', # values: enable, disable; OPTIONAL
        VpnEcmpSupport => 'enable', # values: enable, disable; OPTIONAL
      },    # OPTIONAL
      TagSpecifications => [
        {
          ResourceType => 'client-vpn-endpoint'
          , # values: client-vpn-endpoint, customer-gateway, dedicated-host, dhcp-options, elastic-ip, fleet, fpga-image, host-reservation, image, instance, internet-gateway, launch-template, natgateway, network-acl, network-interface, reserved-instances, route-table, security-group, snapshot, spot-instances-request, subnet, traffic-mirror-filter, traffic-mirror-session, traffic-mirror-target, transit-gateway, transit-gateway-attachment, transit-gateway-route-table, volume, vpc, vpc-peering-connection, vpn-connection, vpn-gateway; OPTIONAL
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
    my $TransitGateway = $CreateTransitGatewayResult->TransitGateway;

    # Returns a L<Paws::EC2::CreateTransitGatewayResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateTransitGateway>

=head1 ATTRIBUTES


=head2 Description => Str

A description of the transit gateway.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Options => EC2_TransitGatewayRequestOptions

The transit gateway options.



=head2 TagSpecifications => ArrayRef[EC2_TagSpecification]

The tags to apply to the transit gateway.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTransitGateway in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

