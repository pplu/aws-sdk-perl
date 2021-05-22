package Paws::EC2::Address;
  use Moose;
  has AllocationId => (is => 'ro', isa => 'Str', request_name => 'allocationId', traits => ['NameInRequest']);
  has AssociationId => (is => 'ro', isa => 'Str', request_name => 'associationId', traits => ['NameInRequest']);
  has CarrierIp => (is => 'ro', isa => 'Str', request_name => 'carrierIp', traits => ['NameInRequest']);
  has CustomerOwnedIp => (is => 'ro', isa => 'Str', request_name => 'customerOwnedIp', traits => ['NameInRequest']);
  has CustomerOwnedIpv4Pool => (is => 'ro', isa => 'Str', request_name => 'customerOwnedIpv4Pool', traits => ['NameInRequest']);
  has Domain => (is => 'ro', isa => 'Str', request_name => 'domain', traits => ['NameInRequest']);
  has InstanceId => (is => 'ro', isa => 'Str', request_name => 'instanceId', traits => ['NameInRequest']);
  has NetworkBorderGroup => (is => 'ro', isa => 'Str', request_name => 'networkBorderGroup', traits => ['NameInRequest']);
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', request_name => 'networkInterfaceId', traits => ['NameInRequest']);
  has NetworkInterfaceOwnerId => (is => 'ro', isa => 'Str', request_name => 'networkInterfaceOwnerId', traits => ['NameInRequest']);
  has PrivateIpAddress => (is => 'ro', isa => 'Str', request_name => 'privateIpAddress', traits => ['NameInRequest']);
  has PublicIp => (is => 'ro', isa => 'Str', request_name => 'publicIp', traits => ['NameInRequest']);
  has PublicIpv4Pool => (is => 'ro', isa => 'Str', request_name => 'publicIpv4Pool', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::Address

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::Address object:

  $service_obj->Method(Att1 => { AllocationId => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::Address object:

  $result = $service_obj->Method(...);
  $result->Att1->AllocationId

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AllocationId => Str

The ID representing the allocation of the address for use with EC2-VPC.


=head2 AssociationId => Str

The ID representing the association of the address with an instance in
a VPC.


=head2 CarrierIp => Str

The carrier IP address associated. This option is only available for
network interfaces which reside in a subnet in a Wavelength Zone (for
example an EC2 instance).


=head2 CustomerOwnedIp => Str

The customer-owned IP address.


=head2 CustomerOwnedIpv4Pool => Str

The ID of the customer-owned address pool.


=head2 Domain => Str

Indicates whether this Elastic IP address is for use with instances in
EC2-Classic (C<standard>) or instances in a VPC (C<vpc>).


=head2 InstanceId => Str

The ID of the instance that the address is associated with (if any).


=head2 NetworkBorderGroup => Str

The name of the unique set of Availability Zones, Local Zones, or
Wavelength Zones from which AWS advertises IP addresses.


=head2 NetworkInterfaceId => Str

The ID of the network interface.


=head2 NetworkInterfaceOwnerId => Str

The ID of the AWS account that owns the network interface.


=head2 PrivateIpAddress => Str

The private IP address associated with the Elastic IP address.


=head2 PublicIp => Str

The Elastic IP address.


=head2 PublicIpv4Pool => Str

The ID of an address pool.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

Any tags assigned to the Elastic IP address.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
