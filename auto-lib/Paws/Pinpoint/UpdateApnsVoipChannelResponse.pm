
package Paws::Pinpoint::UpdateApnsVoipChannelResponse;
  use Moo;  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'APNSVoipChannelResponse');
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw/Pinpoint_APNSVoipChannelResponse/;
  has APNSVoipChannelResponse => (is => 'ro', isa => Pinpoint_APNSVoipChannelResponse, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'APNSVoipChannelResponse' => 1
                  },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'APNSVoipChannelResponse' => {
                                              'class' => 'Paws::Pinpoint::APNSVoipChannelResponse',
                                              'type' => 'Pinpoint_APNSVoipChannelResponse'
                                            }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::UpdateApnsVoipChannelResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> APNSVoipChannelResponse => Pinpoint_APNSVoipChannelResponse




=head2 _request_id => Str


=cut

