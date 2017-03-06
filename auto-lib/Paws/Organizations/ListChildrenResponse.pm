
package Paws::Organizations::ListChildrenResponse;
  use Moose;
  has Children => (is => 'ro', isa => 'ArrayRef[Paws::Organizations::Child]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::ListChildrenResponse

=head1 ATTRIBUTES


=head2 Children => ArrayRef[L<Paws::Organizations::Child>]

The list of children of the specified parent container.


=head2 NextToken => Str

If present, this value indicates that there is more output available
than is included in the current response. Use this value in the
C<NextToken> request parameter in a subsequent call to the operation to
get the next part of the output. You should repeat this until the
C<NextToken> response element comes back as C<null>.


=head2 _request_id => Str


=cut

1;