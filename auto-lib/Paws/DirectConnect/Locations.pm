
package Paws::DirectConnect::Locations {
  use Moose;
  with 'Paws::API::ResultParser';
  has locations => (is => 'ro', isa => 'ArrayRef[Paws::DirectConnect::Location]');

}
1;