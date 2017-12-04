
package Paws::MigrationHub::ListCreatedArtifactsResult;
  use Moose;
  has CreatedArtifactList => (is => 'ro', isa => 'ArrayRef[Paws::MigrationHub::CreatedArtifact]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHub::ListCreatedArtifactsResult

=head1 ATTRIBUTES


=head2 CreatedArtifactList => ArrayRef[L<Paws::MigrationHub::CreatedArtifact>]

List of created artifacts up to the maximum number of results specified
in the request.


=head2 NextToken => Str

If there are more created artifacts than the max result, return the
next token to be passed to the next call as a bookmark of where to
start from.


=head2 _request_id => Str


=cut

1;