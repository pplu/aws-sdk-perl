
package Paws::Glue::GetConnectionResponse;
  use Moose;
  has Connection => (is => 'ro', isa => 'Paws::Glue::Connection');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetConnectionResponse

=head1 ATTRIBUTES


=head2 Connection => L<Paws::Glue::Connection>

The requested connection definition.


=head2 _request_id => Str


=cut

1;