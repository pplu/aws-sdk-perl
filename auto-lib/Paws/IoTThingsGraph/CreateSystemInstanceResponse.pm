
package Paws::IoTThingsGraph::CreateSystemInstanceResponse;
  use Moose;
  has Summary => (is => 'ro', isa => 'Paws::IoTThingsGraph::SystemInstanceSummary', traits => ['NameInRequest'], request_name => 'summary' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::CreateSystemInstanceResponse

=head1 ATTRIBUTES


=head2 Summary => L<Paws::IoTThingsGraph::SystemInstanceSummary>

The summary object that describes the new system instance.


=head2 _request_id => Str


=cut

1;