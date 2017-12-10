
package Paws::WorkDocs::DescribeGroupsResponse;
  use Moose;
  has Groups => (is => 'ro', isa => 'ArrayRef[Paws::WorkDocs::GroupMetadata]');
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::DescribeGroupsResponse

=head1 ATTRIBUTES


=head2 Groups => ArrayRef[L<Paws::WorkDocs::GroupMetadata>]

The list of groups.


=head2 Marker => Str

The marker to use when requesting the next set of results. If there are
no additional results, the string is empty.


=head2 _request_id => Str


=cut

