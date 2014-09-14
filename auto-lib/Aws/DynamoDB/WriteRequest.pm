package Aws::DynamoDB::WriteRequest {
  use Moose;
  has DeleteRequest => (is => 'ro', isa => 'Aws::DynamoDB::DeleteRequest');
  has PutRequest => (is => 'ro', isa => 'Aws::DynamoDB::PutRequest');
}
1
