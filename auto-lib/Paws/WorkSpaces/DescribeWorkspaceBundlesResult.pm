
package Paws::WorkSpaces::DescribeWorkspaceBundlesResult;
  use Moose;
  has Bundles => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpaces::WorkspaceBundle]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DescribeWorkspaceBundlesResult

=head1 ATTRIBUTES


=head2 Bundles => ArrayRef[L<Paws::WorkSpaces::WorkspaceBundle>]

Information about the bundles.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
null when there are no more results to return. This token is valid for
one day and must be used within that time frame.


=head2 _request_id => Str


=cut

1;