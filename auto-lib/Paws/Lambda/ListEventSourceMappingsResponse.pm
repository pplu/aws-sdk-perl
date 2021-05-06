
package Paws::Lambda::ListEventSourceMappingsResponse;
  use Moose;
  has EventSourceMappings => (is => 'ro', isa => 'ArrayRef[Paws::Lambda::EventSourceMappingConfiguration]');
  has NextMarker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::ListEventSourceMappingsResponse

=head1 ATTRIBUTES


=head2 EventSourceMappings => ArrayRef[L<Paws::Lambda::EventSourceMappingConfiguration>]

A list of event source mappings.


=head2 NextMarker => Str

A pagination token that's returned when the response doesn't contain
all event source mappings.


=head2 _request_id => Str


=cut

