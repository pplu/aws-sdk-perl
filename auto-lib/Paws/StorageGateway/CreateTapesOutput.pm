
package Paws::StorageGateway::CreateTapesOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has TapeARNs => (is => 'ro', isa => 'ArrayRef[Str]');

}
1;