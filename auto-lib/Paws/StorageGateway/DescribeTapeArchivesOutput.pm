
package Paws::StorageGateway::DescribeTapeArchivesOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has TapeArchives => (is => 'ro', isa => 'ArrayRef[Paws::StorageGateway::TapeArchive]');

}
1;