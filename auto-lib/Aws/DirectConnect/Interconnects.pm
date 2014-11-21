
package Aws::DirectConnect::Interconnects {
  use Moose;
  with 'AWS::API::ResultParser';
  has interconnects => (is => 'ro', isa => 'ArrayRef[Aws::DirectConnect::Interconnect]');

}
1;