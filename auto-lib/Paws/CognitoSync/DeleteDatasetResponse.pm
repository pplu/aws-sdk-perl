
package Paws::CognitoSync::DeleteDatasetResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has Dataset => (is => 'ro', isa => 'Paws::CognitoSync::Dataset');

}
1;