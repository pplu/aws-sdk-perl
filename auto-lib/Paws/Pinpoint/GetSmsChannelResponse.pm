
package Paws::Pinpoint::GetSmsChannelResponse;
  use Moo;  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'SMSChannelResponse');
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw/Pinpoint_SMSChannelResponse/;
  has SMSChannelResponse => (is => 'ro', isa => Pinpoint_SMSChannelResponse, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'SMSChannelResponse' => 1
                  },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SMSChannelResponse' => {
                                         'class' => 'Paws::Pinpoint::SMSChannelResponse',
                                         'type' => 'Pinpoint_SMSChannelResponse'
                                       }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GetSmsChannelResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> SMSChannelResponse => Pinpoint_SMSChannelResponse




=head2 _request_id => Str


=cut

