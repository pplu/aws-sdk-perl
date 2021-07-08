
package Paws::Signer::RemoveProfilePermissionResponse;
  use Moose;
  has RevisionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'revisionId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Signer::RemoveProfilePermissionResponse

=head1 ATTRIBUTES


=head2 RevisionId => Str

An identifier for the current revision of the profile permissions.


=head2 _request_id => Str


=cut

