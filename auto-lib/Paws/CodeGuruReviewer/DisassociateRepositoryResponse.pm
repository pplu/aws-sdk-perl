
package Paws::CodeGuruReviewer::DisassociateRepositoryResponse;
  use Moose;
  has RepositoryAssociation => (is => 'ro', isa => 'Paws::CodeGuruReviewer::RepositoryAssociation');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruReviewer::DisassociateRepositoryResponse

=head1 ATTRIBUTES


=head2 RepositoryAssociation => L<Paws::CodeGuruReviewer::RepositoryAssociation>

Information about the disassociated repository.


=head2 _request_id => Str


=cut

