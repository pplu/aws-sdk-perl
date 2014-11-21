
package Aws::DynamoDB::ListTablesOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has LastEvaluatedTableName => (is => 'ro', isa => 'Str');
  has TableNames => (is => 'ro', isa => 'ArrayRef[Str]');

}
1;