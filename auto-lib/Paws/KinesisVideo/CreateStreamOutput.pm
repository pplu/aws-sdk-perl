
package Paws::KinesisVideo::CreateStreamOutput;
  use Moose;
  has StreamARN => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideo::CreateStreamOutput

=head1 ATTRIBUTES


=head2 StreamARN => Str

The Amazon Resource Name (ARN) of the stream.


=head2 _request_id => Str


=cut

