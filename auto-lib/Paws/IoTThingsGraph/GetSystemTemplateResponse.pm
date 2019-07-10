
package Paws::IoTThingsGraph::GetSystemTemplateResponse;
  use Moose;
  has Description => (is => 'ro', isa => 'Paws::IoTThingsGraph::SystemTemplateDescription', traits => ['NameInRequest'], request_name => 'description' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::GetSystemTemplateResponse

=head1 ATTRIBUTES


=head2 Description => L<Paws::IoTThingsGraph::SystemTemplateDescription>

An object that contains summary data about the system.


=head2 _request_id => Str


=cut

1;