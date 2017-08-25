
package Paws::SSM::ListAssociationVersionsResult;
  use Moose;
  has AssociationVersions => (is => 'ro', isa => 'ArrayRef[Paws::SSM::AssociationVersionInfo]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::ListAssociationVersionsResult

=head1 ATTRIBUTES


=head2 AssociationVersions => ArrayRef[L<Paws::SSM::AssociationVersionInfo>]

Information about all versions of the association for the specified
association ID.


=head2 NextToken => Str

The token for the next set of items to return. Use this token to get
the next set of results.


=head2 _request_id => Str


=cut

1;