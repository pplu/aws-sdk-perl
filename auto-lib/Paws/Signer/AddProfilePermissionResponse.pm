
package Paws::Signer::AddProfilePermissionResponse;
  use Moose;
  has RevisionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'revisionId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Signer::AddProfilePermissionResponse

=head1 ATTRIBUTES


=head2 RevisionId => Str

A unique identifier for the current profile revision.


=head2 _request_id => Str


=cut

