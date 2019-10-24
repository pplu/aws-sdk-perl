
package Paws::KinesisVideo::ListStreamsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::KinesisVideo::Types qw/KinesisVideo_StreamInfo/;
  has NextToken => (is => 'ro', isa => Str);
  has StreamInfoList => (is => 'ro', isa => ArrayRef[KinesisVideo_StreamInfo]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'StreamInfoList' => {
                                     'class' => 'Paws::KinesisVideo::StreamInfo',
                                     'type' => 'ArrayRef[KinesisVideo_StreamInfo]'
                                   }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideo::ListStreamsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If the response is truncated, the call returns this element with a
token. To get the next batch of streams, use this token in your next
request.


=head2 StreamInfoList => ArrayRef[KinesisVideo_StreamInfo]

An array of C<StreamInfo> objects.


=head2 _request_id => Str


=cut

