
package Paws::MediaConnect::DescribeFlowResponse;
  use Moose;
  has Flow => (is => 'ro', isa => 'Paws::MediaConnect::Flow', traits => ['NameInRequest'], request_name => 'flow');
  has Messages => (is => 'ro', isa => 'Paws::MediaConnect::Messages', traits => ['NameInRequest'], request_name => 'messages');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::DescribeFlowResponse

=head1 ATTRIBUTES


=head2 Flow => L<Paws::MediaConnect::Flow>




=head2 Messages => L<Paws::MediaConnect::Messages>




=head2 _request_id => Str


=cut

