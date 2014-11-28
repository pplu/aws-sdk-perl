
package Paws::CognitoSync::ListIdentityPoolUsageResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has Count => (is => 'ro', isa => 'Int');
  has IdentityPoolUsages => (is => 'ro', isa => 'ArrayRef[Paws::CognitoSync::IdentityPoolUsage]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

}
1;