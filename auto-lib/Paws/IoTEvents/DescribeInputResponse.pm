
package Paws::IoTEvents::DescribeInputResponse;
  use Moose;
  has Input => (is => 'ro', isa => 'Paws::IoTEvents::Input', traits => ['NameInRequest'], request_name => 'input');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::DescribeInputResponse

=head1 ATTRIBUTES


=head2 Input => L<Paws::IoTEvents::Input>

Information about the input.


=head2 _request_id => Str


=cut

