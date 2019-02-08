package Paws::EC2::NatGateway;
  use Moose;
  has CreateTime => (is => 'ro', isa => 'Str', request_name => 'createTime', traits => ['NameInRequest']);
  has DeleteTime => (is => 'ro', isa => 'Str', request_name => 'deleteTime', traits => ['NameInRequest']);
  has FailureCode => (is => 'ro', isa => 'Str', request_name => 'failureCode', traits => ['NameInRequest']);
  has FailureMessage => (is => 'ro', isa => 'Str', request_name => 'failureMessage', traits => ['NameInRequest']);
  has NatGatewayAddresses => (is => 'ro', isa => 'ArrayRef[Paws::EC2::NatGatewayAddress]', request_name => 'natGatewayAddressSet', traits => ['NameInRequest']);
  has NatGatewayId => (is => 'ro', isa => 'Str', request_name => 'natGatewayId', traits => ['NameInRequest']);
  has ProvisionedBandwidth => (is => 'ro', isa => 'Paws::EC2::ProvisionedBandwidth', request_name => 'provisionedBandwidth', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has SubnetId => (is => 'ro', isa => 'Str', request_name => 'subnetId', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
  has VpcId => (is => 'ro', isa => 'Str', request_name => 'vpcId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::NatGateway

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::NatGateway object:

  $service_obj->Method(Att1 => { CreateTime => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::NatGateway object:

  $result = $service_obj->Method(...);
  $result->Att1->CreateTime

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CreateTime => Str

  The date and time the NAT gateway was created.


=head2 DeleteTime => Str

  The date and time the NAT gateway was deleted, if applicable.


=head2 FailureCode => Str

  If the NAT gateway could not be created, specifies the error code for
the failure. (C<InsufficientFreeAddressesInSubnet> |
C<Gateway.NotAttached> | C<InvalidAllocationID.NotFound> |
C<Resource.AlreadyAssociated> | C<InternalError> |
C<InvalidSubnetID.NotFound>)


=head2 FailureMessage => Str

  If the NAT gateway could not be created, specifies the error message
for the failure, that corresponds to the error code.

=over

=item *

For InsufficientFreeAddressesInSubnet: "Subnet has insufficient free
addresses to create this NAT gateway"

=item *

For Gateway.NotAttached: "Network vpc-xxxxxxxx has no Internet gateway
attached"

=item *

For InvalidAllocationID.NotFound: "Elastic IP address eipalloc-xxxxxxxx
could not be associated with this NAT gateway"

=item *

For Resource.AlreadyAssociated: "Elastic IP address eipalloc-xxxxxxxx
is already associated"

=item *

For InternalError: "Network interface eni-xxxxxxxx, created and used
internally by this NAT gateway is in an invalid state. Please try
again."

=item *

For InvalidSubnetID.NotFound: "The specified subnet subnet-xxxxxxxx
does not exist or could not be found."

=back



=head2 NatGatewayAddresses => ArrayRef[L<Paws::EC2::NatGatewayAddress>]

  Information about the IP addresses and network interface associated
with the NAT gateway.


=head2 NatGatewayId => Str

  The ID of the NAT gateway.


=head2 ProvisionedBandwidth => L<Paws::EC2::ProvisionedBandwidth>

  Reserved. If you need to sustain traffic greater than the documented
limits
(https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/vpc-nat-gateway.html),
contact us through the Support Center
(https://console.aws.amazon.com/support/home?).


=head2 State => Str

  The state of the NAT gateway.

=over

=item *

C<pending>: The NAT gateway is being created and is not ready to
process traffic.

=item *

C<failed>: The NAT gateway could not be created. Check the
C<failureCode> and C<failureMessage> fields for the reason.

=item *

C<available>: The NAT gateway is able to process traffic. This status
remains until you delete the NAT gateway, and does not indicate the
health of the NAT gateway.

=item *

C<deleting>: The NAT gateway is in the process of being terminated and
may still be processing traffic.

=item *

C<deleted>: The NAT gateway has been terminated and is no longer
processing traffic.

=back



=head2 SubnetId => Str

  The ID of the subnet in which the NAT gateway is located.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

  The tags for the NAT gateway.


=head2 VpcId => Str

  The ID of the VPC in which the NAT gateway is located.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
