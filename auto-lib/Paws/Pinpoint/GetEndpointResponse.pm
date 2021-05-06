
package Paws::Pinpoint::GetEndpointResponse;
  use Moose;
  has EndpointResponse => (is => 'ro', isa => 'Paws::Pinpoint::EndpointResponse', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'EndpointResponse');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GetEndpointResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndpointResponse => L<Paws::Pinpoint::EndpointResponse>




=head2 _request_id => Str


=cut

