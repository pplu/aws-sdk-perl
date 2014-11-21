
package Aws::KMS::CreateGrantResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has GrantId => (is => 'ro', isa => 'Str');
  has GrantToken => (is => 'ro', isa => 'Str');

}
1;