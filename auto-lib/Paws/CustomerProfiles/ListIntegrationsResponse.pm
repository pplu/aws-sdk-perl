
package Paws::CustomerProfiles::ListIntegrationsResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::CustomerProfiles::ListIntegrationItem]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::ListIntegrationsResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::CustomerProfiles::ListIntegrationItem>]

The list of ListIntegrations instances.


=head2 NextToken => Str

The pagination token from the previous ListIntegrations API call.


=head2 _request_id => Str


=cut

