
package Paws::IoTData::DeleteThingShadowResponse;
  use Moo;  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Payload');
  use Types::Standard qw/Str/;
  use Paws::IoTData::Types qw//;
  has Payload => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Payload' => {
                              'type' => 'Str'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Payload' => 'payload'
                     },
  'IsRequired' => {
                    'Payload' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTData::DeleteThingShadowResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Payload => Str

The state information, in JSON format.


=head2 _request_id => Str


=cut

