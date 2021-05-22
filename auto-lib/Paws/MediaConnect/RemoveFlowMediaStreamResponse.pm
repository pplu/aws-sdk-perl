
package Paws::MediaConnect::RemoveFlowMediaStreamResponse;
  use Moose;
  has FlowArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'flowArn');
  has MediaStreamName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'mediaStreamName');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::RemoveFlowMediaStreamResponse

=head1 ATTRIBUTES


=head2 FlowArn => Str

The Amazon Resource Name (ARN) of the flow.


=head2 MediaStreamName => Str

The name of the media stream that was removed.


=head2 _request_id => Str


=cut

