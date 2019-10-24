
package Paws::Pinpoint::UpdateApnsChannelResponse;
  use Moo;  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'APNSChannelResponse');
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw/Pinpoint_APNSChannelResponse/;
  has APNSChannelResponse => (is => 'ro', isa => Pinpoint_APNSChannelResponse, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'APNSChannelResponse' => {
                                          'class' => 'Paws::Pinpoint::APNSChannelResponse',
                                          'type' => 'Pinpoint_APNSChannelResponse'
                                        },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'APNSChannelResponse' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::UpdateApnsChannelResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> APNSChannelResponse => Pinpoint_APNSChannelResponse




=head2 _request_id => Str


=cut

