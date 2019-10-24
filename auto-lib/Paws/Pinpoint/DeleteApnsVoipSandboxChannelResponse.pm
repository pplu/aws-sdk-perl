
package Paws::Pinpoint::DeleteApnsVoipSandboxChannelResponse;
  use Moo;  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'APNSVoipSandboxChannelResponse');
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw/Pinpoint_APNSVoipSandboxChannelResponse/;
  has APNSVoipSandboxChannelResponse => (is => 'ro', isa => Pinpoint_APNSVoipSandboxChannelResponse, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'APNSVoipSandboxChannelResponse' => {
                                                     'class' => 'Paws::Pinpoint::APNSVoipSandboxChannelResponse',
                                                     'type' => 'Pinpoint_APNSVoipSandboxChannelResponse'
                                                   }
             },
  'IsRequired' => {
                    'APNSVoipSandboxChannelResponse' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::DeleteApnsVoipSandboxChannelResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> APNSVoipSandboxChannelResponse => Pinpoint_APNSVoipSandboxChannelResponse




=head2 _request_id => Str


=cut

