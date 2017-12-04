package Paws::StorageGateway::NetworkInterface;
  use Moose;
  has Ipv4Address => (is => 'ro', isa => 'Str');
  has Ipv6Address => (is => 'ro', isa => 'Str');
  has MacAddress => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::NetworkInterface

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::StorageGateway::NetworkInterface object:

  $service_obj->Method(Att1 => { Ipv4Address => $value, ..., MacAddress => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::StorageGateway::NetworkInterface object:

  $result = $service_obj->Method(...);
  $result->Att1->Ipv4Address

=head1 DESCRIPTION

Describes a gateway's network interface.

=head1 ATTRIBUTES


=head2 Ipv4Address => Str

  The Internet Protocol version 4 (IPv4) address of the interface.


=head2 Ipv6Address => Str

  The Internet Protocol version 6 (IPv6) address of the interface.
I<Currently not supported>.


=head2 MacAddress => Str

  The Media Access Control (MAC) address of the interface.

This is currently unsupported and will not be returned in output.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

