
package Paws::WorkDocs::CreateFolderResponse;
  use Moose;
  has Metadata => (is => 'ro', isa => 'Paws::WorkDocs::FolderMetadata');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::CreateFolderResponse

=head1 ATTRIBUTES


=head2 Metadata => L<Paws::WorkDocs::FolderMetadata>

The metadata of the folder.


=head2 _request_id => Str


=cut

