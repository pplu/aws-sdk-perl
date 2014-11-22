
package Paws::EC2::ImportVolume {
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'availabilityZone' , required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Image => (is => 'ro', isa => 'Paws::EC2::DiskImageDetail', traits => ['NameInRequest'], request_name => 'image' , required => 1);
  has Volume => (is => 'ro', isa => 'Paws::EC2::VolumeDetail', traits => ['NameInRequest'], request_name => 'volume' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ImportVolume');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ImportVolumeResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;