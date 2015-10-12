package Paws::EC2::Address;
  use Moose;
  has AllocationId => (is => 'ro', isa => 'Str', xmlname => 'allocationId', traits => ['Unwrapped']);
  has AssociationId => (is => 'ro', isa => 'Str', xmlname => 'associationId', traits => ['Unwrapped']);
  has Domain => (is => 'ro', isa => 'Str', xmlname => 'domain', traits => ['Unwrapped']);
  has InstanceId => (is => 'ro', isa => 'Str', xmlname => 'instanceId', traits => ['Unwrapped']);
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', xmlname => 'networkInterfaceId', traits => ['Unwrapped']);
  has NetworkInterfaceOwnerId => (is => 'ro', isa => 'Str', xmlname => 'networkInterfaceOwnerId', traits => ['Unwrapped']);
  has PrivateIpAddress => (is => 'ro', isa => 'Str', xmlname => 'privateIpAddress', traits => ['Unwrapped']);
  has PublicIp => (is => 'ro', isa => 'Str', xmlname => 'publicIp', traits => ['Unwrapped']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::Address

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::Address object:

  $service_obj->Method(Att1 => { AllocationId => $value, ..., PublicIp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::Address object:

  $result = $service_obj->Method(...);
  $result->Att1->AllocationId

=head1 ATTRIBUTES

=head2 AllocationId => Str

  The ID representing the allocation of the address for use with EC2-VPC.

=head2 AssociationId => Str

  The ID representing the association of the address with an instance in
a VPC.

=head2 Domain => Str

  Indicates whether this Elastic IP address is for use with instances in
EC2-Classic (C<standard>) or instances in a VPC (C<vpc>).

=head2 InstanceId => Str

  The ID of the instance that the address is associated with (if any).

=head2 NetworkInterfaceId => Str

  The ID of the network interface.

=head2 NetworkInterfaceOwnerId => Str

  The ID of the AWS account that owns the network interface.

=head2 PrivateIpAddress => Str

  The private IP address associated with the Elastic IP address.

=head2 PublicIp => Str

  The Elastic IP address.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
