
package Aws::STS::GetFederationTokenResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Credentials => (is => 'ro', isa => 'Aws::STS::Credentials');
  has FederatedUser => (is => 'ro', isa => 'Aws::STS::FederatedUser');
  has PackedPolicySize => (is => 'ro', isa => 'Int');

}
1;