
package Paws::Organizations::ListPoliciesForTargetResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Policies => (is => 'ro', isa => 'ArrayRef[Paws::Organizations::PolicySummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::ListPoliciesForTargetResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If present, this value indicates that there is more output available
than is included in the current response. Use this value in the
C<NextToken> request parameter in a subsequent call to the operation to
get the next part of the output. You should repeat this until the
C<NextToken> response element comes back as C<null>.


=head2 Policies => ArrayRef[L<Paws::Organizations::PolicySummary>]

The list of policies that match the criteria in the request.


=head2 _request_id => Str


=cut

1;