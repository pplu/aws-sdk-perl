
package Paws::KinesisVideo::DescribeStreamOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::KinesisVideo::Types qw/KinesisVideo_StreamInfo/;
  has StreamInfo => (is => 'ro', isa => KinesisVideo_StreamInfo);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'StreamInfo' => {
                                 'class' => 'Paws::KinesisVideo::StreamInfo',
                                 'type' => 'KinesisVideo_StreamInfo'
                               }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideo::DescribeStreamOutput

=head1 ATTRIBUTES


=head2 StreamInfo => KinesisVideo_StreamInfo

An object that describes the stream.


=head2 _request_id => Str


=cut

