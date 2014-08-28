
package Aws::DirectConnect::ConfirmConnectionResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has connectionState => (is => 'ro', isa => 'Str');

}
1;
