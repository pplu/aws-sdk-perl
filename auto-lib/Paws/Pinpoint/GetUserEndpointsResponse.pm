
package Paws::Pinpoint::GetUserEndpointsResponse;
  use Moo;  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'EndpointsResponse');
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw/Pinpoint_EndpointsResponse/;
  has EndpointsResponse => (is => 'ro', isa => Pinpoint_EndpointsResponse, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'EndpointsResponse' => 1
                  },
  'types' => {
               'EndpointsResponse' => {
                                        'type' => 'Pinpoint_EndpointsResponse',
                                        'class' => 'Paws::Pinpoint::EndpointsResponse'
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

Paws::Pinpoint::GetUserEndpointsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndpointsResponse => Pinpoint_EndpointsResponse




=head2 _request_id => Str


=cut

