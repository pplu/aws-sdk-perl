
package Paws::ApiGateway::GatewayResponses;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::ApiGateway::GatewayResponse]', traits => ['NameInRequest'], request_name => 'item');
  has Position => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'position');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::GatewayResponses

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::ApiGateway::GatewayResponse>]

Returns the entire collection, because of no pagination support.


=head2 Position => Str




=head2 _request_id => Str


=cut

