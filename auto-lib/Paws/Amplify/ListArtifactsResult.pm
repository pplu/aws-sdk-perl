
package Paws::Amplify::ListArtifactsResult;
  use Moose;
  has Artifacts => (is => 'ro', isa => 'ArrayRef[Paws::Amplify::Artifact]', traits => ['NameInRequest'], request_name => 'artifacts', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::ListArtifactsResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> Artifacts => ArrayRef[L<Paws::Amplify::Artifact>]

List of artifacts.


=head2 NextToken => Str

Pagination token. If non-null pagination token is returned in a result,
then pass its value in another request to fetch more entries.


=head2 _request_id => Str


=cut

