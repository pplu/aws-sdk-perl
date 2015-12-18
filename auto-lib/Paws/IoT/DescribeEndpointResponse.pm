
package Paws::IoT::DescribeEndpointResponse;
  use Moose;
  has EndpointAddress => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeEndpointResponse

=head1 ATTRIBUTES


=head2 EndpointAddress => Str

  The endpoint. The format of the endpoint is as follows:
I<identifier>.iot.I<region>.amazonaws.com.


=cut

