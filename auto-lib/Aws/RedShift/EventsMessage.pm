
package Aws::RedShift::EventsMessage {
  use Moose;
  with 'AWS::API::ResultParser';
  has Events => (is => 'ro', isa => 'ArrayRef[Aws::RedShift::Event]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;