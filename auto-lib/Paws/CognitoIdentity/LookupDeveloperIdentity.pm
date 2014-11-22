
package Paws::CognitoIdentity::LookupDeveloperIdentity {
  use Moose;
  has DeveloperUserIdentifier => (is => 'ro', isa => 'Str');
  has IdentityId => (is => 'ro', isa => 'Str');
  has IdentityPoolId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'LookupDeveloperIdentity');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdentity::LookupDeveloperIdentityResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;