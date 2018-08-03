
package Paws::StorageGateway::JoinDomainOutput;
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::JoinDomainOutput

=head1 ATTRIBUTES


=head2 GatewayARN => Str

The unique Amazon Resource Name (ARN) of the gateway that joined the
domain.


=head2 _request_id => Str


=cut

1;