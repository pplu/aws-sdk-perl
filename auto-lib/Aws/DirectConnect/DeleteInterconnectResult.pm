
package Aws::DirectConnect::DeleteInterconnectResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has interconnectState => (is => 'ro', isa => 'Str');

}
1;
