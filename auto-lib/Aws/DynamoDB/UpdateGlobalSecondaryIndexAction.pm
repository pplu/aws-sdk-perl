package Aws::DynamoDB::UpdateGlobalSecondaryIndexAction {
  use Moose;
  has IndexName => (is => 'ro', isa => 'Str', required => 1);
  has ProvisionedThroughput => (is => 'ro', isa => 'Aws::DynamoDB::ProvisionedThroughput', required => 1);
}
1;
