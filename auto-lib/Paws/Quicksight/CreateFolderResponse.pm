
package Paws::Quicksight::CreateFolderResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has FolderId => (is => 'ro', isa => 'Str');
  has RequestId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::CreateFolderResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) for the newly created folder.


=head2 FolderId => Str

The folder ID for the newly created folder.


=head2 RequestId => Str

The request ID for the newly created folder.


=head2 Status => Int

The status of the newly created folder. If succeeded, the status is
C<SC_OK (200)>.


=head2 _request_id => Str


=cut

