
package Aws::IAM::ListOpenIDConnectProvidersResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has OpenIDConnectProviderList => (is => 'ro', isa => 'ArrayRef[Aws::IAM::OpenIDConnectProviderListEntry]');

}
1;