package Aws::DynamoDB::GlobalSecondaryIndexUpdate {
  use Moose;
  has Update => (is => 'ro', isa => 'Aws::DynamoDB::UpdateGlobalSecondaryIndexAction');
}
1;
