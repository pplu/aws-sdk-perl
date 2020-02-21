
package Paws::CodeStarConnections::GetConnectionOutput;
  use Moose;
  has Connection => (is => 'ro', isa => 'Paws::CodeStarConnections::Connection');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeStarConnections::GetConnectionOutput

=head1 ATTRIBUTES


=head2 Connection => L<Paws::CodeStarConnections::Connection>

The connection details, such as status, owner, and provider type.


=head2 _request_id => Str


=cut

1;