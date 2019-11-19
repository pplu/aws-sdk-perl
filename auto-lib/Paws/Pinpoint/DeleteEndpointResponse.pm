
package Paws::Pinpoint::DeleteEndpointResponse;
  use Moo;  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'EndpointResponse');
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw/Pinpoint_EndpointResponse/;
  has EndpointResponse => (is => 'ro', isa => Pinpoint_EndpointResponse, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'EndpointResponse' => 1
                  },
  'types' => {
               'EndpointResponse' => {
                                       'type' => 'Pinpoint_EndpointResponse',
                                       'class' => 'Paws::Pinpoint::EndpointResponse'
                                     },
               '_request_id' => {
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

Paws::Pinpoint::DeleteEndpointResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndpointResponse => Pinpoint_EndpointResponse




=head2 _request_id => Str


=cut

