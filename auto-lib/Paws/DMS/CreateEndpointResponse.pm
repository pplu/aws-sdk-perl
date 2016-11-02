
package Paws::DMS::CreateEndpointResponse;
  use Moose;
  has Endpoint => (is => 'ro', isa => 'Paws::DMS::Endpoint');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::CreateEndpointResponse

=head1 ATTRIBUTES


=head2 Endpoint => L<Paws::DMS::Endpoint>

The endpoint that was created.


=head2 _request_id => Str


=cut

1;