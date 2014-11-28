
package Paws::Lambda::ListEventSourcesResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has EventSources => (is => 'ro', isa => 'ArrayRef[Paws::Lambda::EventSourceConfiguration]');
  has NextMarker => (is => 'ro', isa => 'Str');

}
1;