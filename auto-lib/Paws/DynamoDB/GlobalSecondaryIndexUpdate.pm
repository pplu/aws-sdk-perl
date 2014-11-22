package Paws::DynamoDB::GlobalSecondaryIndexUpdate {
  use Moose;
  has Update => (is => 'ro', isa => 'Paws::DynamoDB::UpdateGlobalSecondaryIndexAction');
}
1;
