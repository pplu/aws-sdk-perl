
package Paws::Organizations::ListParentsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Parents => (is => 'ro', isa => 'ArrayRef[Paws::Organizations::Parent]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::ListParentsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If present, indicates that more output is available than is included in
the current response. Use this value in the C<NextToken> request
parameter in a subsequent call to the operation to get the next part of
the output. You should repeat this until the C<NextToken> response
element comes back as C<null>.


=head2 Parents => ArrayRef[L<Paws::Organizations::Parent>]

A list of parents for the specified child account or OU.


=head2 _request_id => Str


=cut

1;