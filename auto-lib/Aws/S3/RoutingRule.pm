package Aws::S3::RoutingRule {
  use Moose;
  has Condition => (is => 'ro', isa => 'Aws::S3::Condition');
  has Redirect => (is => 'ro', isa => 'Aws::S3::Redirect', required => 1);
}
1
