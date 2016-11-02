
package Paws::DMS::ModifyEndpointResponse;
  use Moose;
  has Endpoint => (is => 'ro', isa => 'Paws::DMS::Endpoint');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::ModifyEndpointResponse

=head1 ATTRIBUTES


=head2 Endpoint => L<Paws::DMS::Endpoint>

The modified endpoint.


=head2 _request_id => Str


=cut

1;