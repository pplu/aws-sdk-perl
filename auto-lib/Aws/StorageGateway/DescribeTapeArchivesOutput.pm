
package Aws::StorageGateway::DescribeTapeArchivesOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has TapeArchives => (is => 'ro', isa => 'ArrayRef[Aws::StorageGateway::TapeArchive]');

}
1;