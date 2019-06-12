
package Paws::IoTThingsGraph::UpdateSystemTemplateResponse;
  use Moose;
  has Summary => (is => 'ro', isa => 'Paws::IoTThingsGraph::SystemTemplateSummary', traits => ['NameInRequest'], request_name => 'summary' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::UpdateSystemTemplateResponse

=head1 ATTRIBUTES


=head2 Summary => L<Paws::IoTThingsGraph::SystemTemplateSummary>

An object containing summary information about the updated system.


=head2 _request_id => Str


=cut

1;