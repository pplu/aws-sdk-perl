
package Aws::RedShift::OrderableClusterOptionsMessage {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has OrderableClusterOptions => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::OrderableClusterOption]');

}
1;