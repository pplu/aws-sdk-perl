
package Paws::DMS::DeleteConnectionResponse;
  use Moose;
  has Connection => (is => 'ro', isa => 'Paws::DMS::Connection');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DeleteConnectionResponse

=head1 ATTRIBUTES


=head2 Connection => L<Paws::DMS::Connection>

The connection that is being deleted.


=head2 _request_id => Str


=cut

1;