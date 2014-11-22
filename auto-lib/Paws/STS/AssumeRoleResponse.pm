
package Paws::STS::AssumeRoleResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has AssumedRoleUser => (is => 'ro', isa => 'Paws::STS::AssumedRoleUser');
  has Credentials => (is => 'ro', isa => 'Paws::STS::Credentials');
  has PackedPolicySize => (is => 'ro', isa => 'Int');

}
1;