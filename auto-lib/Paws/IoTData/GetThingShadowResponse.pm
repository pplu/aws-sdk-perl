
package Paws::IoTData::GetThingShadowResponse;
  use Moo;  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Payload');
  use Types::Standard qw/Str/;
  use Paws::IoTData::Types qw//;
  has Payload => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Payload' => 'payload'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Payload' => {
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

Paws::IoTData::GetThingShadowResponse

=head1 ATTRIBUTES


=head2 Payload => Str

The state information, in JSON format.


=head2 _request_id => Str


=cut

