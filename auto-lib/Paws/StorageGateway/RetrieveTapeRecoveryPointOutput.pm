
package Paws::StorageGateway::RetrieveTapeRecoveryPointOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has TapeARN => (is => 'ro', isa => 'Str');

}
1;