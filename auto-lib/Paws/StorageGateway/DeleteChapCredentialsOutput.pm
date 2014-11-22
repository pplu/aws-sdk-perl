
package Paws::StorageGateway::DeleteChapCredentialsOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has InitiatorName => (is => 'ro', isa => 'Str');
  has TargetARN => (is => 'ro', isa => 'Str');

}
1;