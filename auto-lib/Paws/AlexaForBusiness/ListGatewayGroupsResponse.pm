
package Paws::AlexaForBusiness::ListGatewayGroupsResponse;
  use Moose;
  has GatewayGroups => (is => 'ro', isa => 'ArrayRef[Paws::AlexaForBusiness::GatewayGroupSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::ListGatewayGroupsResponse

=head1 ATTRIBUTES


=head2 GatewayGroups => ArrayRef[L<Paws::AlexaForBusiness::GatewayGroupSummary>]

The gateway groups in the list.


=head2 NextToken => Str

The token used to paginate though multiple pages of gateway group
summaries.


=head2 _request_id => Str


=cut

1;