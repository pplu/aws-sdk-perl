
package Aws::StorageGateway::CreateTapesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has TapeARNs => (is => 'ro', isa => 'ArrayRef[Str]');

}
1;
