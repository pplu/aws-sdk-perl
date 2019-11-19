
package Paws::IoT::DescribeStreamResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw/IoT_StreamInfo/;
  has StreamInfo => (is => 'ro', isa => IoT_StreamInfo);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'StreamInfo' => {
                                 'type' => 'IoT_StreamInfo',
                                 'class' => 'Paws::IoT::StreamInfo'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'StreamInfo' => 'streamInfo'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeStreamResponse

=head1 ATTRIBUTES


=head2 StreamInfo => IoT_StreamInfo

Information about the stream.


=head2 _request_id => Str


=cut

