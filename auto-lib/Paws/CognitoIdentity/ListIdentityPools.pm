
package Paws::CognitoIdentity::ListIdentityPools {
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListIdentityPools');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdentity::ListIdentityPoolsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;