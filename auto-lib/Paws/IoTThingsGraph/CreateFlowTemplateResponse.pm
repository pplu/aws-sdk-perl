
package Paws::IoTThingsGraph::CreateFlowTemplateResponse;
  use Moose;
  has Summary => (is => 'ro', isa => 'Paws::IoTThingsGraph::FlowTemplateSummary', traits => ['NameInRequest'], request_name => 'summary' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::CreateFlowTemplateResponse

=head1 ATTRIBUTES


=head2 Summary => L<Paws::IoTThingsGraph::FlowTemplateSummary>

The summary object that describes the created workflow.


=head2 _request_id => Str


=cut

1;