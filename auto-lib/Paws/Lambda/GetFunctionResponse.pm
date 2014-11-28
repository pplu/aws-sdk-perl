
package Paws::Lambda::GetFunctionResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has Code => (is => 'ro', isa => 'Paws::Lambda::FunctionCodeLocation');
  has Configuration => (is => 'ro', isa => 'Paws::Lambda::FunctionConfiguration');

}
1;