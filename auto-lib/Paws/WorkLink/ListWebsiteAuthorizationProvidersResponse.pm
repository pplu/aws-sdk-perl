
package Paws::WorkLink::ListWebsiteAuthorizationProvidersResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has WebsiteAuthorizationProviders => (is => 'ro', isa => 'ArrayRef[Paws::WorkLink::WebsiteAuthorizationProviderSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkLink::ListWebsiteAuthorizationProvidersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If this value is null, it retrieves the first page.


=head2 WebsiteAuthorizationProviders => ArrayRef[L<Paws::WorkLink::WebsiteAuthorizationProviderSummary>]

The website authorization providers.


=head2 _request_id => Str


=cut

