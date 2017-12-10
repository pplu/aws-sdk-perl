package Paws::EC2::NatGatewayAddress;
  use Moose;
  has AllocationId => (is => 'ro', isa => 'Str', request_name => 'allocationId', traits => ['NameInRequest']);
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', request_name => 'networkInterfaceId', traits => ['NameInRequest']);
  has PrivateIp => (is => 'ro', isa => 'Str', request_name => 'privateIp', traits => ['NameInRequest']);
  has PublicIp => (is => 'ro', isa => 'Str', request_name => 'publicIp', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::NatGatewayAddress

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::NatGatewayAddress object:

  $service_obj->Method(Att1 => { AllocationId => $value, ..., PublicIp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::NatGatewayAddress object:

  $result = $service_obj->Method(...);
  $result->Att1->AllocationId

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AllocationId => Str

  The allocation ID of the Elastic IP address that's associated with the
NAT gateway.


=head2 NetworkInterfaceId => Str

  The ID of the network interface associated with the NAT gateway.


=head2 PrivateIp => Str

  The private IP address associated with the Elastic IP address.


=head2 PublicIp => Str

  The Elastic IP address associated with the NAT gateway.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
