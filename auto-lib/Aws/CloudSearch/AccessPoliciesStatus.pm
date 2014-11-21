package Aws::CloudSearch::AccessPoliciesStatus {
  use Moose;
  has Options => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Aws::CloudSearch::OptionStatus', required => 1);
}
1;
