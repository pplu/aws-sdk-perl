
package Paws::STS::GetFederationTokenResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has Credentials => (is => 'ro', isa => 'Paws::STS::Credentials');
  has FederatedUser => (is => 'ro', isa => 'Paws::STS::FederatedUser');
  has PackedPolicySize => (is => 'ro', isa => 'Int');

}
1;