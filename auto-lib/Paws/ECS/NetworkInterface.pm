package Paws::ECS::NetworkInterface;
  use Moose;
  has AttachmentId => (is => 'ro', isa => 'Str', request_name => 'attachmentId', traits => ['NameInRequest']);
  has Ipv6Address => (is => 'ro', isa => 'Str', request_name => 'ipv6Address', traits => ['NameInRequest']);
  has PrivateIpv4Address => (is => 'ro', isa => 'Str', request_name => 'privateIpv4Address', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::NetworkInterface

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::NetworkInterface object:

  $service_obj->Method(Att1 => { AttachmentId => $value, ..., PrivateIpv4Address => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::NetworkInterface object:

  $result = $service_obj->Method(...);
  $result->Att1->AttachmentId

=head1 DESCRIPTION

An object representing the elastic network interface for tasks that use
the C<awsvpc> network mode.

=head1 ATTRIBUTES


=head2 AttachmentId => Str

  The attachment ID for the network interface.


=head2 Ipv6Address => Str

  The private IPv6 address for the network interface.


=head2 PrivateIpv4Address => Str

  The private IPv4 address for the network interface.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

