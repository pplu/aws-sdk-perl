
package Paws::IoTThingsGraph::GetFlowTemplateResponse;
  use Moose;
  has Description => (is => 'ro', isa => 'Paws::IoTThingsGraph::FlowTemplateDescription', traits => ['NameInRequest'], request_name => 'description' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::GetFlowTemplateResponse

=head1 ATTRIBUTES


=head2 Description => L<Paws::IoTThingsGraph::FlowTemplateDescription>

The object that describes the specified workflow.


=head2 _request_id => Str


=cut

1;