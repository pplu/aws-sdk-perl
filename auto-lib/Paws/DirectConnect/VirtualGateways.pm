
package Paws::DirectConnect::VirtualGateways {
  use Moose;
  with 'Paws::API::ResultParser';
  has virtualGateways => (is => 'ro', isa => 'ArrayRef[Paws::DirectConnect::VirtualGateway]');

}
1;