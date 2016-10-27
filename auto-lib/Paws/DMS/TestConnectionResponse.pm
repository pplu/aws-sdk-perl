
package Paws::DMS::TestConnectionResponse;
  use Moose;
  has Connection => (is => 'ro', isa => 'Paws::DMS::Connection');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::TestConnectionResponse

=head1 ATTRIBUTES


=head2 Connection => L<Paws::DMS::Connection>

The connection tested.




=cut

1;