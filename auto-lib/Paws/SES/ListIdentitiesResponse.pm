
package Paws::SES::ListIdentitiesResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has Identities => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

}
1;