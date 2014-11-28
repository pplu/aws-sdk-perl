
package Paws::Lambda::ListFunctionsResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has Functions => (is => 'ro', isa => 'ArrayRef[Paws::Lambda::FunctionConfiguration]');
  has NextMarker => (is => 'ro', isa => 'Str');

}
1;