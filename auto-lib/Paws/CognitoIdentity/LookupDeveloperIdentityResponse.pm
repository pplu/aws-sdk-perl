
package Paws::CognitoIdentity::LookupDeveloperIdentityResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has DeveloperUserIdentifierList => (is => 'ro', isa => 'ArrayRef[Str]');
  has IdentityId => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');

}
1;