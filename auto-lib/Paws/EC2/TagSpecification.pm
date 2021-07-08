package Paws::EC2::TagSpecification;
  use Moose;
  has ResourceType => (is => 'ro', isa => 'Str', request_name => 'resourceType', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'Tag', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::TagSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::TagSpecification object:

  $service_obj->Method(Att1 => { ResourceType => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::TagSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->ResourceType

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ResourceType => Str

The type of resource to tag. Currently, the resource types that support
tagging on creation are: C<capacity-reservation> | C<carrier-gateway> |
C<client-vpn-endpoint> | C<customer-gateway> | C<dedicated-host> |
C<dhcp-options> | C<egress-only-internet-gateway> | C<elastic-ip> |
C<elastic-gpu> | C<export-image-task> | C<export-instance-task> |
C<fleet> | C<fpga-image> | C<host-reservation> | C<image>|
C<import-image-task> | C<import-snapshot-task> | C<instance> |
C<internet-gateway> | C<ipv4pool-ec2> | C<ipv6pool-ec2> | C<key-pair> |
C<launch-template> | C<local-gateway-route-table-vpc-association> |
C<placement-group> | C<prefix-list> | C<natgateway> | C<network-acl> |
C<network-interface> | C<reserved-instances> |C<route-table> |
C<security-group>| C<snapshot> | C<spot-fleet-request> |
C<spot-instances-request> | C<snapshot> | C<subnet> |
C<traffic-mirror-filter> | C<traffic-mirror-session> |
C<traffic-mirror-target> | C<transit-gateway> |
C<transit-gateway-attachment> | C<transit-gateway-multicast-domain> |
C<transit-gateway-route-table> | C<volume> |C<vpc> | C<
vpc-peering-connection> | C<vpc-endpoint> (for interface and gateway
endpoints) | C<vpc-endpoint-service> (for AWS PrivateLink) |
C<vpc-flow-log> | C<vpn-connection> | C<vpn-gateway>.

To tag a resource after it has been created, see CreateTags
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateTags.html).


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

The tags to apply to the resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
