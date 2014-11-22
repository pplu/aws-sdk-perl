
package Paws::IAM::ListVirtualMFADevices {
  use Moose;
  has AssignmentStatus => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListVirtualMFADevices');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::ListVirtualMFADevicesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListVirtualMFADevicesResult');
}
1;