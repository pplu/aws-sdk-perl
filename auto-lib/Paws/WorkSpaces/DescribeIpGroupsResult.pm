
package Paws::WorkSpaces::DescribeIpGroupsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Result => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpaces::WorkspacesIpGroup]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DescribeIpGroupsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next set of results, or null if there
are no more results available. This token is valid for one day and must
be used within that time frame.


=head2 Result => ArrayRef[L<Paws::WorkSpaces::WorkspacesIpGroup>]

Information about the IP access control groups.


=head2 _request_id => Str


=cut

1;