
package Paws::DirectConnect::Interconnects {
  use Moose;
  with 'Paws::API::ResultParser';
  has interconnects => (is => 'ro', isa => 'ArrayRef[Paws::DirectConnect::Interconnect]');

}
1;