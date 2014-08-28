
package Aws::CognitoIdentity::ListIdentities {
  use Moose;
  has IdentityPoolId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListIdentities');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CognitoIdentity::ListIdentitiesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}

1;
