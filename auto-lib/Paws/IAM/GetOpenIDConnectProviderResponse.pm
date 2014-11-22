
package Paws::IAM::GetOpenIDConnectProviderResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has ClientIDList => (is => 'ro', isa => 'ArrayRef[Str]');
  has CreateDate => (is => 'ro', isa => 'Str');
  has ThumbprintList => (is => 'ro', isa => 'ArrayRef[Str]');
  has Url => (is => 'ro', isa => 'Str');

}
1;