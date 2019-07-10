
package Paws::AlexaForBusiness::GetGatewayGroupResponse;
  use Moose;
  has GatewayGroup => (is => 'ro', isa => 'Paws::AlexaForBusiness::GatewayGroup');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::GetGatewayGroupResponse

=head1 ATTRIBUTES


=head2 GatewayGroup => L<Paws::AlexaForBusiness::GatewayGroup>




=head2 _request_id => Str


=cut

1;