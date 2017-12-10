package Paws::EC2::NetworkInterfacePrivateIpAddress;
  use Moose;
  has Association => (is => 'ro', isa => 'Paws::EC2::NetworkInterfaceAssociation', request_name => 'association', traits => ['NameInRequest']);
  has Primary => (is => 'ro', isa => 'Bool', request_name => 'primary', traits => ['NameInRequest']);
  has PrivateDnsName => (is => 'ro', isa => 'Str', request_name => 'privateDnsName', traits => ['NameInRequest']);
  has PrivateIpAddress => (is => 'ro', isa => 'Str', request_name => 'privateIpAddress', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::NetworkInterfacePrivateIpAddress

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::NetworkInterfacePrivateIpAddress object:

  $service_obj->Method(Att1 => { Association => $value, ..., PrivateIpAddress => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::NetworkInterfacePrivateIpAddress object:

  $result = $service_obj->Method(...);
  $result->Att1->Association

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Association => L<Paws::EC2::NetworkInterfaceAssociation>

  The association information for an Elastic IP address (IPv4) associated
with the network interface.


=head2 Primary => Bool

  Indicates whether this IPv4 address is the primary private IPv4 address
of the network interface.


=head2 PrivateDnsName => Str

  The private DNS name.


=head2 PrivateIpAddress => Str

  The private IPv4 address.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
