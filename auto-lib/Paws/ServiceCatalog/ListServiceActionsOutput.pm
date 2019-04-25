
package Paws::ServiceCatalog::ListServiceActionsOutput;
  use Moose;
  has NextPageToken => (is => 'ro', isa => 'Str');
  has ServiceActionSummaries => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::ServiceActionSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ListServiceActionsOutput

=head1 ATTRIBUTES


=head2 NextPageToken => Str

The page token to use to retrieve the next set of results. If there are
no additional results, this value is null.


=head2 ServiceActionSummaries => ArrayRef[L<Paws::ServiceCatalog::ServiceActionSummary>]

An object containing information about the service actions associated
with the provisioning artifact.


=head2 _request_id => Str


=cut

1;