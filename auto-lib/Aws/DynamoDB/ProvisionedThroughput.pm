package Aws::DynamoDB::ProvisionedThroughput {
  use Moose;
  has ReadCapacityUnits => (is => 'ro', isa => 'Num', required => 1);
  has WriteCapacityUnits => (is => 'ro', isa => 'Num', required => 1);
}
1
