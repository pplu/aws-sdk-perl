
package Paws::IoTThingsGraph::UndeploySystemInstanceResponse;
  use Moose;
  has Summary => (is => 'ro', isa => 'Paws::IoTThingsGraph::SystemInstanceSummary', traits => ['NameInRequest'], request_name => 'summary' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::UndeploySystemInstanceResponse

=head1 ATTRIBUTES


=head2 Summary => L<Paws::IoTThingsGraph::SystemInstanceSummary>

An object that contains summary information about the system instance
that was removed from its target.


=head2 _request_id => Str


=cut

1;