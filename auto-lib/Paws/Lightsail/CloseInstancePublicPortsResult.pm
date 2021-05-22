
package Paws::Lightsail::CloseInstancePublicPortsResult;
  use Moose;
  has Operation => (is => 'ro', isa => 'Paws::Lightsail::Operation', traits => ['NameInRequest'], request_name => 'operation' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::CloseInstancePublicPortsResult

=head1 ATTRIBUTES


=head2 Operation => L<Paws::Lightsail::Operation>

An object that describes the result of the action, such as the status
of the request, the timestamp of the request, and the resources
affected by the request.


=head2 _request_id => Str


=cut

1;