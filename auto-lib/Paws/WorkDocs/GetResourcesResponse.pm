
package Paws::WorkDocs::GetResourcesResponse;
  use Moose;
  has Documents => (is => 'ro', isa => 'ArrayRef[Paws::WorkDocs::DocumentMetadata]');
  has Folders => (is => 'ro', isa => 'ArrayRef[Paws::WorkDocs::FolderMetadata]');
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::GetResourcesResponse

=head1 ATTRIBUTES


=head2 Documents => ArrayRef[L<Paws::WorkDocs::DocumentMetadata>]

The documents in the specified collection.


=head2 Folders => ArrayRef[L<Paws::WorkDocs::FolderMetadata>]

The folders in the specified folder.


=head2 Marker => Str

The marker to use when requesting the next set of results. If there are
no additional results, the string is empty.


=head2 _request_id => Str


=cut

