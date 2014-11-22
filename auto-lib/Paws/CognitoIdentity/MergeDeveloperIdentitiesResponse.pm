
package Paws::CognitoIdentity::MergeDeveloperIdentitiesResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has IdentityId => (is => 'ro', isa => 'Str');

}
1;