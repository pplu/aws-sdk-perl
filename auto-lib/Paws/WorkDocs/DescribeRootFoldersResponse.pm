
package Paws::WorkDocs::DescribeRootFoldersResponse;
  use Moose;
  has Folders => (is => 'ro', isa => 'ArrayRef[Paws::WorkDocs::FolderMetadata]');
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::DescribeRootFoldersResponse

=head1 ATTRIBUTES


=head2 Folders => ArrayRef[L<Paws::WorkDocs::FolderMetadata>]

The user's special folders.


=head2 Marker => Str

The marker for the next set of results.


=head2 _request_id => Str


=cut

