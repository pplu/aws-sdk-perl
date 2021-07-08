
package Paws::OpsWorksCM::RestoreServerResponse;
  use Moose;
  has Server => (is => 'ro', isa => 'Paws::OpsWorksCM::Server');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorksCM::RestoreServerResponse

=head1 ATTRIBUTES


=head2 Server => L<Paws::OpsWorksCM::Server>




=head2 _request_id => Str


=cut

1;