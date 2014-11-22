
package Paws::KMS::CreateGrantResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has GrantId => (is => 'ro', isa => 'Str');
  has GrantToken => (is => 'ro', isa => 'Str');

}
1;