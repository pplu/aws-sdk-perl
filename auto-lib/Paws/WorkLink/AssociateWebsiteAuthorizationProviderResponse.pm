
package Paws::WorkLink::AssociateWebsiteAuthorizationProviderResponse;
  use Moose;
  has AuthorizationProviderId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkLink::AssociateWebsiteAuthorizationProviderResponse

=head1 ATTRIBUTES


=head2 AuthorizationProviderId => Str

A unique identifier for the authorization provider.


=head2 _request_id => Str


=cut

