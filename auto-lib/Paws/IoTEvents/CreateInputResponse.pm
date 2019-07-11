
package Paws::IoTEvents::CreateInputResponse;
  use Moose;
  has InputConfiguration => (is => 'ro', isa => 'Paws::IoTEvents::InputConfiguration', traits => ['NameInRequest'], request_name => 'inputConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::CreateInputResponse

=head1 ATTRIBUTES


=head2 InputConfiguration => L<Paws::IoTEvents::InputConfiguration>

Information about the configuration of the input.


=head2 _request_id => Str


=cut

