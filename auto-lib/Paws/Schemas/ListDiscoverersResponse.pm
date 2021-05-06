
package Paws::Schemas::ListDiscoverersResponse;
  use Moose;
  has Discoverers => (is => 'ro', isa => 'ArrayRef[Paws::Schemas::DiscovererSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Schemas::ListDiscoverersResponse

=head1 ATTRIBUTES


=head2 Discoverers => ArrayRef[L<Paws::Schemas::DiscovererSummary>]

An array of DiscovererSummary information.


=head2 NextToken => Str

The token that specifies the next page of results to return. To request
the first page, leave NextToken empty. The token will expire in 24
hours, and cannot be shared with other accounts.


=head2 _request_id => Str


=cut

