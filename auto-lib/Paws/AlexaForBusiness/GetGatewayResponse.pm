
package Paws::AlexaForBusiness::GetGatewayResponse;
  use Moose;
  has Gateway => (is => 'ro', isa => 'Paws::AlexaForBusiness::Gateway');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::GetGatewayResponse

=head1 ATTRIBUTES


=head2 Gateway => L<Paws::AlexaForBusiness::Gateway>

The details of the gateway.


=head2 _request_id => Str


=cut

1;