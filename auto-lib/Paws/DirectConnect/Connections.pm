
package Paws::DirectConnect::Connections {
  use Moose;
  with 'Paws::API::ResultParser';
  has connections => (is => 'ro', isa => 'ArrayRef[Paws::DirectConnect::Connection]');

}
1;