
package Paws::Signer::ListProfilePermissionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Permissions => (is => 'ro', isa => 'ArrayRef[Paws::Signer::Permission]', traits => ['NameInRequest'], request_name => 'permissions');
  has PolicySizeBytes => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'policySizeBytes');
  has RevisionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'revisionId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Signer::ListProfilePermissionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

String for specifying the next set of paginated results.


=head2 Permissions => ArrayRef[L<Paws::Signer::Permission>]

List of permissions associated with the Signing Profile.


=head2 PolicySizeBytes => Int

Total size of the policy associated with the Signing Profile in bytes.


=head2 RevisionId => Str

The identifier for the current revision of profile permissions.


=head2 _request_id => Str


=cut

