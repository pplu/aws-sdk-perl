
package Paws::StorageGateway::DescribeCachediSCSIVolumes {
  use Moose;
  has VolumeARNs => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCachediSCSIVolumes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::DescribeCachediSCSIVolumesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;