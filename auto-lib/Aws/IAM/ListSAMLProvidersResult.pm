
package Aws::IAM::ListSAMLProvidersResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has SAMLProviderList => (is => 'ro', isa => 'ArrayRef[Aws::IAM::SAMLProviderListEntry]');

}
1;