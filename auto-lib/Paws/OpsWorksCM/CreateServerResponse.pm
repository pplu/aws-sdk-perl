
package Paws::OpsWorksCM::CreateServerResponse;
  use Moose;
  has Server => (is => 'ro', isa => 'Paws::OpsWorksCM::Server');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorksCM::CreateServerResponse

=head1 ATTRIBUTES


=head2 Server => L<Paws::OpsWorksCM::Server>

The server that is created by the request.


=head2 _request_id => Str


=cut

1;