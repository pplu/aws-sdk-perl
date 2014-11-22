
package Paws::DynamoDB::ListTablesOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has LastEvaluatedTableName => (is => 'ro', isa => 'Str');
  has TableNames => (is => 'ro', isa => 'ArrayRef[Str]');

}
1;