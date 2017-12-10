
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

Information about the launch path.


=head2 NextPageToken => Str

The page token to use to retrieve the next set of results. If there are
no additional results, this value is null.


=head2 _request_id => Str


=cut

1;