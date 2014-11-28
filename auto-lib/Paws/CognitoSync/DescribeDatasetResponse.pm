
package Paws::CognitoSync::DescribeDatasetResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has Dataset => (is => 'ro', isa => 'Paws::CognitoSync::Dataset');

}
1;