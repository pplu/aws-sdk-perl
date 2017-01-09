package Paws::EC2::InstancePrivateIpAddress;
  use Moose;
  has Association => (is => 'ro', isa => 'Paws::EC2::InstanceNetworkInterfaceAssociation', xmlname => 'association', traits => ['Unwrapped']);
  has Primary => (is => 'ro', isa => 'Bool', xmlname => 'primary', traits => ['Unwrapped']);
  has PrivateDnsName => (is => 'ro', isa => 'Str', xmlname => 'privateDnsName', traits => ['Unwrapped']);
  has PrivateIpAddress => (is => 'ro', isa => 'Str', xmlname => 'privateIpAddress', traits => ['Unwrapped']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::InstancePrivateIpAddress

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::InstancePrivateIpAddress object:

  $service_obj->Method(Att1 => { Association => $value, ..., PrivateIpAddress => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::InstancePrivateIpAddress object:

  $result = $service_obj->Method(...);
  $result->Att1->Association

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Association => L<Paws::EC2::InstanceNetworkInterfaceAssociation>

  The association information for an Elastic IP address for the network
interface.


=head2 Primary => Bool

  Indicates whether this IPv4 address is the primary private IP address
of the network interface.


=head2 PrivateDnsName => Str

  The private IPv4 DNS name.


=head2 PrivateIpAddress => Str

  The private IPv4 address of the network interface.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
