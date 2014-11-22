
package Paws::IAM::ListSAMLProvidersResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has SAMLProviderList => (is => 'ro', isa => 'ArrayRef[Paws::IAM::SAMLProviderListEntry]');

}
1;