
package Paws::DirectConnect::VirtualInterfaces {
  use Moose;
  with 'Paws::API::ResultParser';
  has virtualInterfaces => (is => 'ro', isa => 'ArrayRef[Paws::DirectConnect::VirtualInterface]');

}
1;