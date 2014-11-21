
package Aws::StorageGateway::DescribeTapeArchives {
  use Moose;
  has Limit => (is => 'ro', isa => 'Int');
  has Marker => (is => 'ro', isa => 'Str');
  has TapeARNs => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTapeArchives');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::DescribeTapeArchivesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;