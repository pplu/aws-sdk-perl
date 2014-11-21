
package Aws::IAM::ListSAMLProvidersResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has SAMLProviderList => (is => 'ro', isa => 'ArrayRef[Aws::IAM::SAMLProviderListEntry]');

}
1;