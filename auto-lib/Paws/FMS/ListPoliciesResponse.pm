
package Paws::FMS::ListPoliciesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PolicyList => (is => 'ro', isa => 'ArrayRef[Paws::FMS::PolicySummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FMS::ListPoliciesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If you have more C<PolicySummary> objects than the number that you
specified for C<MaxResults> in the request, the response includes a
C<NextToken> value. To list more C<PolicySummary> objects, submit
another C<ListPolicies> request, and specify the C<NextToken> value
from the response in the C<NextToken> value in the next request.


=head2 PolicyList => ArrayRef[L<Paws::FMS::PolicySummary>]

An array of C<PolicySummary> objects.


=head2 _request_id => Str


=cut

1;