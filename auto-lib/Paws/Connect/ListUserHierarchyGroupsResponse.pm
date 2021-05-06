
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

If there are additional results, this is the token for the next set of
results.


=head2 UserHierarchyGroupSummaryList => ArrayRef[L<Paws::Connect::HierarchyGroupSummary>]

Information about the hierarchy groups.


=head2 _request_id => Str


=cut

