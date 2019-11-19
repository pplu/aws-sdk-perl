
package Paws::IoT::DescribeEndpointResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw//;
  has EndpointAddress => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'EndpointAddress' => 'endpointAddress'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'EndpointAddress' => {
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

Paws::IoT::DescribeEndpointResponse

=head1 ATTRIBUTES


=head2 EndpointAddress => Str

The endpoint. The format of the endpoint is as follows:
I<identifier>.iot.I<region>.amazonaws.com.


=head2 _request_id => Str


=cut

