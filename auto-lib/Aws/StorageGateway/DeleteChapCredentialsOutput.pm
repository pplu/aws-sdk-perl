
package Aws::StorageGateway::DeleteChapCredentialsOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has InitiatorName => (is => 'ro', isa => 'Str');
  has TargetARN => (is => 'ro', isa => 'Str');

}
1;