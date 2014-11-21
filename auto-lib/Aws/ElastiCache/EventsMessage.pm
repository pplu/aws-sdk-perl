
package Aws::ElastiCache::EventsMessage {
  use Moose;
  with 'AWS::API::ResultParser';
  has Events => (is => 'ro', isa => 'ArrayRef[Aws::ElastiCache::Event]');
  has Marker => (is => 'ro', isa => 'Str');

}
1;