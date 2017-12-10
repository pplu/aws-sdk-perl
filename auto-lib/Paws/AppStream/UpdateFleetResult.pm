
package Paws::AppStream::UpdateFleetResult;
  use Moose;
  has Fleet => (is => 'ro', isa => 'Paws::AppStream::Fleet');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::UpdateFleetResult

=head1 ATTRIBUTES


=head2 Fleet => L<Paws::AppStream::Fleet>

Information about the fleet.


=head2 _request_id => Str


=cut

1;