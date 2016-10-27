
package Paws::ServiceCatalog::ListLaunchPathsOutput;
  use Moose;
  has LaunchPathSummaries => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::LaunchPathSummary]');
  has NextPageToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ListLaunchPathsOutput

=head1 ATTRIBUTES


=head2 LaunchPathSummaries => ArrayRef[L<Paws::ServiceCatalog::LaunchPathSummary>]

List of launch path information summaries for the specified
C<PageToken>.



=head2 NextPageToken => Str

The page token to use to retrieve the next page of results for this
operation. If there are no more pages, this value is null.




=cut

1;