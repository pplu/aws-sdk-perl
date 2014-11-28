
package Paws::CognitoSync::UpdateRecordsResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has Records => (is => 'ro', isa => 'ArrayRef[Paws::CognitoSync::Record]');

}
1;