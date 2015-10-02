package Paws::ES::SnapshotOptionsStatus;
  use Moose;
  has Options => (is => 'ro', isa => 'Paws::ES::SnapshotOptions', required => 1);
  has Status => (is => 'ro', isa => 'Paws::ES::OptionStatus', required => 1);
1;
