
package Paws::SNS::ListTopicsResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has NextToken => (is => 'ro', isa => 'Str');
  has Topics => (is => 'ro', isa => 'ArrayRef[Paws::SNS::Topic]');

}
1;