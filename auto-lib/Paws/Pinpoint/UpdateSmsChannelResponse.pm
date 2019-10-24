
package Paws::Pinpoint::UpdateSmsChannelResponse;
  use Moo;  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'SMSChannelResponse');
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw/Pinpoint_SMSChannelResponse/;
  has SMSChannelResponse => (is => 'ro', isa => Pinpoint_SMSChannelResponse, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SMSChannelResponse' => {
                                         'class' => 'Paws::Pinpoint::SMSChannelResponse',
                                         'type' => 'Pinpoint_SMSChannelResponse'
                                       },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'SMSChannelResponse' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::UpdateSmsChannelResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> SMSChannelResponse => Pinpoint_SMSChannelResponse




=head2 _request_id => Str


=cut

