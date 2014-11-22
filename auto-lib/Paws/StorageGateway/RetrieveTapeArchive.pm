
package Paws::StorageGateway::RetrieveTapeArchive {
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has TapeARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RetrieveTapeArchive');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::RetrieveTapeArchiveOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;