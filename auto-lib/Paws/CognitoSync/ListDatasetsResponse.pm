
package Paws::CognitoSync::ListDatasetsResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has Count => (is => 'ro', isa => 'Int');
  has Datasets => (is => 'ro', isa => 'ArrayRef[Paws::CognitoSync::Dataset]');
  has NextToken => (is => 'ro', isa => 'Str');

}
1;