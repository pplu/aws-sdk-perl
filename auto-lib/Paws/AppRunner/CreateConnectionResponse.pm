
package Paws::AppRunner::CreateConnectionResponse;
  use Moose;
  has Connection => (is => 'ro', isa => 'Paws::AppRunner::Connection', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppRunner::CreateConnectionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Connection => L<Paws::AppRunner::Connection>

A description of the App Runner connection that's created by this
request.


=head2 _request_id => Str


=cut

1;