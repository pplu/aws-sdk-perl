
package Paws::Organizations::ListTargetsForPolicyResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Targets => (is => 'ro', isa => 'ArrayRef[Paws::Organizations::PolicyTargetSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::ListTargetsForPolicyResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If present, this value indicates that there is more output available
than is included in the current response. Use this value in the
C<NextToken> request parameter in a subsequent call to the operation to
get the next part of the output. You should repeat this until the
C<NextToken> response element comes back as C<null>.


=head2 Targets => ArrayRef[L<Paws::Organizations::PolicyTargetSummary>]

A list of structures, each of which contains details about one of the
entities to which the specified policy is attached.


=head2 _request_id => Str


=cut

1;