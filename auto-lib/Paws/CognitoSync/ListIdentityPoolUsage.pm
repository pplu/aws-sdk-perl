
package Paws::CognitoSync::ListIdentityPoolUsage {
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListIdentityPoolUsage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoSync::ListIdentityPoolUsageResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListIdentityPoolUsageResult');
}
1;