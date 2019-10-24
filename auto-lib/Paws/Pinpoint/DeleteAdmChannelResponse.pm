
package Paws::Pinpoint::DeleteAdmChannelResponse;
  use Moo;  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'ADMChannelResponse');
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw/Pinpoint_ADMChannelResponse/;
  has ADMChannelResponse => (is => 'ro', isa => Pinpoint_ADMChannelResponse, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ADMChannelResponse' => {
                                         'class' => 'Paws::Pinpoint::ADMChannelResponse',
                                         'type' => 'Pinpoint_ADMChannelResponse'
                                       }
             },
  'IsRequired' => {
                    'ADMChannelResponse' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::DeleteAdmChannelResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ADMChannelResponse => Pinpoint_ADMChannelResponse




=head2 _request_id => Str


=cut

