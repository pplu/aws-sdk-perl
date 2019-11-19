
package Paws::Pinpoint::UpdateBaiduChannelResponse;
  use Moo;  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'BaiduChannelResponse');
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw/Pinpoint_BaiduChannelResponse/;
  has BaiduChannelResponse => (is => 'ro', isa => Pinpoint_BaiduChannelResponse, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'BaiduChannelResponse' => 1
                  },
  'types' => {
               'BaiduChannelResponse' => {
                                           'type' => 'Pinpoint_BaiduChannelResponse',
                                           'class' => 'Paws::Pinpoint::BaiduChannelResponse'
                                         },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::UpdateBaiduChannelResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> BaiduChannelResponse => Pinpoint_BaiduChannelResponse




=head2 _request_id => Str


=cut

