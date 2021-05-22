
package Paws::MediaConnect::UpdateFlowMediaStreamResponse;
  use Moose;
  has FlowArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'flowArn');
  has MediaStream => (is => 'ro', isa => 'Paws::MediaConnect::MediaStream', traits => ['NameInRequest'], request_name => 'mediaStream');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::UpdateFlowMediaStreamResponse

=head1 ATTRIBUTES


=head2 FlowArn => Str

The ARN of the flow that is associated with the media stream that you
updated.


=head2 MediaStream => L<Paws::MediaConnect::MediaStream>

The media stream that you updated.


=head2 _request_id => Str


=cut

