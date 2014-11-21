
package Aws::SES::ListIdentitiesResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has Identities => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

}
1;