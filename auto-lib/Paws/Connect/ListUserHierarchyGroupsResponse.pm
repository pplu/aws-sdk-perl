
package Paws::Connect::ListUserHierarchyGroupsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has UserHierarchyGroupSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::Connect::HierarchyGroupSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListUserHierarchyGroupsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A string returned in the response. Use the value returned in the
response as the value of the NextToken in a subsequent request to
retrieve the next set of results.


=head2 UserHierarchyGroupSummaryList => ArrayRef[L<Paws::Connect::HierarchyGroupSummary>]

An array of C<HierarchyGroupSummary> objects.


=head2 _request_id => Str


=cut

