
package Aws::RDS::EventsMessage {
  use Moose;
  with 'AWS::API::ResultParser';
  has Events => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Event]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;