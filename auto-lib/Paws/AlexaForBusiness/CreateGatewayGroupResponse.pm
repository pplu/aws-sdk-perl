
package Paws::AlexaForBusiness::CreateGatewayGroupResponse;
  use Moose;
  has GatewayGroupArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::CreateGatewayGroupResponse

=head1 ATTRIBUTES


=head2 GatewayGroupArn => Str

The ARN of the created gateway group.


=head2 _request_id => Str


=cut

1;