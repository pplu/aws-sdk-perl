
package Paws::StorageGateway::DeleteVolume {
  use Moose;
  has VolumeARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteVolume');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::DeleteVolumeOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;