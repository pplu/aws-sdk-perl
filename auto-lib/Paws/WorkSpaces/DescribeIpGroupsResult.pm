
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

The token to use to retrieve the next page of results. This value is
null when there are no more results to return.


=head2 Result => ArrayRef[L<Paws::WorkSpaces::WorkspacesIpGroup>]

Information about the IP access control groups.


=head2 _request_id => Str


=cut

1;