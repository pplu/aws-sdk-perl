package Aws::RedShift::HsmConfiguration {
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has HsmConfigurationIdentifier => (is => 'ro', isa => 'Str');
  has HsmIpAddress => (is => 'ro', isa => 'Str');
  has HsmPartitionName => (is => 'ro', isa => 'Str');
}
1;
