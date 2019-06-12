
package Paws::IoTThingsGraph::GetSystemInstanceResponse;
  use Moose;
  has Description => (is => 'ro', isa => 'Paws::IoTThingsGraph::SystemInstanceDescription', traits => ['NameInRequest'], request_name => 'description' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::GetSystemInstanceResponse

=head1 ATTRIBUTES


=head2 Description => L<Paws::IoTThingsGraph::SystemInstanceDescription>

An object that describes the system instance.


=head2 _request_id => Str


=cut

1;