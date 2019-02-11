
package Paws::XRay::GetGroupsResult;
  use Moose;
  has Groups => (is => 'ro', isa => 'ArrayRef[Paws::XRay::GroupSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::GetGroupsResult

=head1 ATTRIBUTES


=head2 Groups => ArrayRef[L<Paws::XRay::GroupSummary>]

The collection of all active groups.


=head2 NextToken => Str

Pagination token. Not used.


=head2 _request_id => Str


=cut

