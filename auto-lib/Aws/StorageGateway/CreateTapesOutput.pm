
package Aws::StorageGateway::CreateTapesOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has TapeARNs => (is => 'ro', isa => 'ArrayRef[Str]');

}
1;