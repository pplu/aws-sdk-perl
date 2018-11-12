
package Paws::Pinpoint::DeleteUserEndpointsResponse;
  use Moose;
  has EndpointsResponse => (is => 'ro', isa => 'Paws::Pinpoint::EndpointsResponse', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'EndpointsResponse');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::DeleteUserEndpointsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndpointsResponse => L<Paws::Pinpoint::EndpointsResponse>




=head2 _request_id => Str


=cut

