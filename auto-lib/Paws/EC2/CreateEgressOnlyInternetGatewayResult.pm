
package Paws::EC2::CreateEgressOnlyInternetGatewayResult;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', request_name => 'clientToken', traits => ['NameInRequest',]);
  has EgressOnlyInternetGateway => (is => 'ro', isa => 'Paws::EC2::EgressOnlyInternetGateway', request_name => 'egressOnlyInternetGateway', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateEgressOnlyInternetGatewayResult

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier you provide to ensure the idempotency
of the request.


=head2 EgressOnlyInternetGateway => L<Paws::EC2::EgressOnlyInternetGateway>

Information about the egress-only Internet gateway.


=head2 _request_id => Str


=cut

