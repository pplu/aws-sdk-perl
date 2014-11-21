
package Aws::StorageGateway::DescribeTapesOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has Tapes => (is => 'ro', isa => 'ArrayRef[Aws::StorageGateway::Tape]');

}
1;