
package Paws::WorkSpaces::DescribeWorkspaceImagesResult;
  use Moose;
  has Images => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpaces::WorkspaceImage]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DescribeWorkspaceImagesResult

=head1 ATTRIBUTES


=head2 Images => ArrayRef[L<Paws::WorkSpaces::WorkspaceImage>]

Information about the images.


=head2 NextToken => Str

The token to use to retrieve the next set of results, or null if no
more results are available.


=head2 _request_id => Str


=cut

1;