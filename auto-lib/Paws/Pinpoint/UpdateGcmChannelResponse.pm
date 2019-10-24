
package Paws::Pinpoint::UpdateGcmChannelResponse;
  use Moo;  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'GCMChannelResponse');
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw/Pinpoint_GCMChannelResponse/;
  has GCMChannelResponse => (is => 'ro', isa => Pinpoint_GCMChannelResponse, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'GCMChannelResponse' => {
                                         'class' => 'Paws::Pinpoint::GCMChannelResponse',
                                         'type' => 'Pinpoint_GCMChannelResponse'
                                       },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'GCMChannelResponse' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::UpdateGcmChannelResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> GCMChannelResponse => Pinpoint_GCMChannelResponse




=head2 _request_id => Str


=cut

