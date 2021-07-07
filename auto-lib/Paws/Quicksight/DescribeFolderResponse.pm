
package Paws::Quicksight::DescribeFolderResponse;
  use Moose;
  has Folder => (is => 'ro', isa => 'Paws::Quicksight::Folder');
  has RequestId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::DescribeFolderResponse

=head1 ATTRIBUTES


=head2 Folder => L<Paws::Quicksight::Folder>

Information about the folder.


=head2 RequestId => Str

The request ID.


=head2 Status => Int

The status. If succeeded, the status is C<SC_OK (200)>.


=head2 _request_id => Str


=cut

