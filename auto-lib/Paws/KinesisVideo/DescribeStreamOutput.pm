
package Paws::KinesisVideo::DescribeStreamOutput;
  use Moose;
  has StreamInfo => (is => 'ro', isa => 'Paws::KinesisVideo::StreamInfo');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideo::DescribeStreamOutput

=head1 ATTRIBUTES


=head2 StreamInfo => L<Paws::KinesisVideo::StreamInfo>

An object that describes the stream.


=head2 _request_id => Str


=cut

