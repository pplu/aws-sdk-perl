package Aws::DynamoDB::PutRequest {
  use Moose;
  has Item => (is => 'ro', isa => 'Aws::DynamoDB::PutItemInputAttributeMap', required => 1);
}
1
