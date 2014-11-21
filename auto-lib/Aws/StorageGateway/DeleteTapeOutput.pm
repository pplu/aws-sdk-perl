
package Aws::StorageGateway::DeleteTapeOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has TapeARN => (is => 'ro', isa => 'Str');

}
1;