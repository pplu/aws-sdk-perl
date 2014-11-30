
package Paws::Lambda::ListEventSourcesResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has EventSources => (is => 'ro', isa => 'ArrayRef[Paws::Lambda::EventSourceConfiguration]');
  has NextMarker => (is => 'ro', isa => 'Str');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::ListEventSourcesResponse

=head1 ATTRIBUTES

=head2 EventSources => ArrayRef[Paws::Lambda::EventSourceConfiguration]

  

An arrary of C<EventSourceConfiguration> objects.









=head2 NextMarker => Str

  

A string, present if there are more event source mappings.











=cut

