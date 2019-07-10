
package Paws::IoTThingsGraph::CreateSystemTemplateResponse;
  use Moose;
  has Summary => (is => 'ro', isa => 'Paws::IoTThingsGraph::SystemTemplateSummary', traits => ['NameInRequest'], request_name => 'summary' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::CreateSystemTemplateResponse

=head1 ATTRIBUTES


=head2 Summary => L<Paws::IoTThingsGraph::SystemTemplateSummary>

The summary object that describes the created system.


=head2 _request_id => Str


=cut

1;