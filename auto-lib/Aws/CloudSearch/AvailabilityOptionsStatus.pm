package Aws::CloudSearch::AvailabilityOptionsStatus {
  use Moose;
  has Options => (is => 'ro', isa => 'Bool', required => 1);
  has Status => (is => 'ro', isa => 'Aws::CloudSearch::OptionStatus', required => 1);
}
1
