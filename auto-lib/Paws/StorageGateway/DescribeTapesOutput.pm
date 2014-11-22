
package Paws::StorageGateway::DescribeTapesOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has Tapes => (is => 'ro', isa => 'ArrayRef[Paws::StorageGateway::Tape]');

}
1;