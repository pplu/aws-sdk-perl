
package Paws::RedShift::OrderableClusterOptionsMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has OrderableClusterOptions => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::OrderableClusterOption]');

}
1;