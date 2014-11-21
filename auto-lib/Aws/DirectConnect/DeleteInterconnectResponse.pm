
package Aws::DirectConnect::DeleteInterconnectResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has interconnectState => (is => 'ro', isa => 'Str');

}
1;