
package Paws::IoTThingsGraph::GetEntitiesResponse;
  use Moose;
  has Descriptions => (is => 'ro', isa => 'ArrayRef[Paws::IoTThingsGraph::EntityDescription]', traits => ['NameInRequest'], request_name => 'descriptions' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::GetEntitiesResponse

=head1 ATTRIBUTES


=head2 Descriptions => ArrayRef[L<Paws::IoTThingsGraph::EntityDescription>]

An array of descriptions for the specified entities.


=head2 _request_id => Str


=cut

1;