
package Paws::STS::GetSessionTokenResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has Credentials => (is => 'ro', isa => 'Paws::STS::Credentials');

}
1;