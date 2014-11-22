
package Paws::DirectConnect::DeleteInterconnectResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has interconnectState => (is => 'ro', isa => 'Str');

}
1;