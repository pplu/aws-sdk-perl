
package Paws::IAM::ListAccountAliasesResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has AccountAliases => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has Marker => (is => 'ro', isa => 'Str');

}
1;