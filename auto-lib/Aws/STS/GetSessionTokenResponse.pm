
package Aws::STS::GetSessionTokenResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has Credentials => (is => 'ro', isa => 'Aws::STS::Credentials');

}
1;