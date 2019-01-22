package Paws::AppStream::NetworkAccessConfiguration;
  use Moose;
  has EniId => (is => 'ro', isa => 'Str');
  has EniPrivateIpAddress => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::NetworkAccessConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppStream::NetworkAccessConfiguration object:

  $service_obj->Method(Att1 => { EniId => $value, ..., EniPrivateIpAddress => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppStream::NetworkAccessConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->EniId

=head1 DESCRIPTION

Describes the network details of the fleet instance for the streaming
session.

=head1 ATTRIBUTES


=head2 EniId => Str

  The resource identifier of the elastic network interface that is
attached to instances in your VPC. All network interfaces have the
eni-xxxxxxxx resource identifier.


=head2 EniPrivateIpAddress => Str

  The private IP address of the elastic network interface that is
attached to instances in your VPC.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

