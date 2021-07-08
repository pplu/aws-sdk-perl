
package Paws::Quicksight::CreateFolderMembershipResponse;
  use Moose;
  has FolderMember => (is => 'ro', isa => 'Paws::Quicksight::FolderMember');
  has RequestId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::CreateFolderMembershipResponse

=head1 ATTRIBUTES


=head2 FolderMember => L<Paws::Quicksight::FolderMember>

Information about the member in the folder.


=head2 RequestId => Str

The request ID.


=head2 Status => Int

The status of the folder membership. If succeeded, the status is
C<SC_OK (200)>.


=head2 _request_id => Str


=cut

