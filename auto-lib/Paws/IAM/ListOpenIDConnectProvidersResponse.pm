
package Paws::IAM::ListOpenIDConnectProvidersResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has OpenIDConnectProviderList => (is => 'ro', isa => 'ArrayRef[Paws::IAM::OpenIDConnectProviderListEntry]');

}
1;