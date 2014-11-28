
package Paws::Lambda::InvokeAsyncResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has Status => (is => 'ro', isa => 'Int');

}
1;