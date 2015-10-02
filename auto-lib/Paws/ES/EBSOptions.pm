package Paws::ES::EBSOptions;
  use Moose;
  has EBSEnabled => (is => 'ro', isa => 'Bool');
  has Iops => (is => 'ro', isa => 'Int');
  has VolumeSize => (is => 'ro', isa => 'Int');
  has VolumeType => (is => 'ro', isa => 'Str');
1;
