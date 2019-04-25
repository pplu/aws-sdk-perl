package Paws::EC2::ClientVpnEndpointStatus;
  use Moose;
  has Code => (is => 'ro', isa => 'Str', request_name => 'code', traits => ['NameInRequest']);
  has Message => (is => 'ro', isa => 'Str', request_name => 'message', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ClientVpnEndpointStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ClientVpnEndpointStatus object:

  $service_obj->Method(Att1 => { Code => $value, ..., Message => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ClientVpnEndpointStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->Code

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Code => Str

  The state of the Client VPN endpoint. Possible states include:

=over

=item *

C<pending-associate> - The Client VPN endpoint has been created but no
target networks have been associated. The Client VPN endpoint cannot
accept connections.

=item *

C<available> - The Client VPN endpoint has been created and a target
network has been associated. The Client VPN endpoint can accept
connections.

=item *

C<deleting> - The Client VPN endpoint is being deleted. The Client VPN
endpoint cannot accept connections.

=item *

C<deleted> - The Client VPN endpoint has been deleted. The Client VPN
endpoint cannot accept connections.

=back



=head2 Message => Str

  A message about the status of the Client VPN endpoint.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
