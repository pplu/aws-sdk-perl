
package Aws::StorageGateway::DeleteTapeArchive {
  use Moose;
  has TapeARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTapeArchive');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::DeleteTapeArchiveResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;