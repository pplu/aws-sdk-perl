
package Paws::MediaConnect::AddFlowMediaStreamsResponse;
  use Moose;
  has FlowArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'flowArn');
  has MediaStreams => (is => 'ro', isa => 'ArrayRef[Paws::MediaConnect::MediaStream]', traits => ['NameInRequest'], request_name => 'mediaStreams');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::AddFlowMediaStreamsResponse

=head1 ATTRIBUTES


=head2 FlowArn => Str

The ARN of the flow that you added media streams to.


=head2 MediaStreams => ArrayRef[L<Paws::MediaConnect::MediaStream>]

The media streams that you added to the flow.


=head2 _request_id => Str


=cut

