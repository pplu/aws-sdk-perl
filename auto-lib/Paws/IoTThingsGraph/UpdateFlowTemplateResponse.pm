
package Paws::IoTThingsGraph::UpdateFlowTemplateResponse;
  use Moose;
  has Summary => (is => 'ro', isa => 'Paws::IoTThingsGraph::FlowTemplateSummary', traits => ['NameInRequest'], request_name => 'summary' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::UpdateFlowTemplateResponse

=head1 ATTRIBUTES


=head2 Summary => L<Paws::IoTThingsGraph::FlowTemplateSummary>

An object containing summary information about the updated workflow.


=head2 _request_id => Str


=cut

1;