package Aws::DynamoDB::DeleteRequest {
  use Moose;
  has Key => (is => 'ro', isa => 'Aws::DynamoDB::Key', required => 1);
}
1
