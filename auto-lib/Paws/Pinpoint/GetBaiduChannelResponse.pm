
package Paws::Pinpoint::GetBaiduChannelResponse;
  use Moo;  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'BaiduChannelResponse');
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw/Pinpoint_BaiduChannelResponse/;
  has BaiduChannelResponse => (is => 'ro', isa => Pinpoint_BaiduChannelResponse, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'BaiduChannelResponse' => {
                                           'class' => 'Paws::Pinpoint::BaiduChannelResponse',
                                           'type' => 'Pinpoint_BaiduChannelResponse'
                                         },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'BaiduChannelResponse' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GetBaiduChannelResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> BaiduChannelResponse => Pinpoint_BaiduChannelResponse




=head2 _request_id => Str


=cut

