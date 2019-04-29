
package Paws::AlexaForBusiness::ListGatewaysResponse;
  use Moose;
  has Gateways => (is => 'ro', isa => 'ArrayRef[Paws::AlexaForBusiness::GatewaySummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::ListGatewaysResponse

=head1 ATTRIBUTES


=head2 Gateways => ArrayRef[L<Paws::AlexaForBusiness::GatewaySummary>]

The gateways in the list.


=head2 NextToken => Str

The token used to paginate though multiple pages of gateway summaries.


=head2 _request_id => Str


=cut

1;