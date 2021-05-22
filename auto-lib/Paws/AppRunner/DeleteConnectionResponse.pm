
package Paws::AppRunner::DeleteConnectionResponse;
  use Moose;
  has Connection => (is => 'ro', isa => 'Paws::AppRunner::Connection');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppRunner::DeleteConnectionResponse

=head1 ATTRIBUTES


=head2 Connection => L<Paws::AppRunner::Connection>

A description of the App Runner connection that this request just
deleted.


=head2 _request_id => Str


=cut

1;