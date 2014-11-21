
package Aws::SNS::ListTopicsResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has NextToken => (is => 'ro', isa => 'Str');
  has Topics => (is => 'ro', isa => 'ArrayRef[Aws::SNS::Topic]');

}
1;