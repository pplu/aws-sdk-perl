
package Paws::ApiGatewayManagement::GetConnectionResponse;
  use Moose;
  has ConnectedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectedAt');
  has Identity => (is => 'ro', isa => 'Paws::ApiGatewayManagement::Identity', traits => ['NameInRequest'], request_name => 'identity');
  has LastActiveAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastActiveAt');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayManagement::GetConnectionResponse

=head1 ATTRIBUTES


=head2 ConnectedAt => Str

The time in ISO 8601 format for when the connection was established.


=head2 Identity => L<Paws::ApiGatewayManagement::Identity>




=head2 LastActiveAt => Str

The time in ISO 8601 format for when the connection was last active.


=head2 _request_id => Str


=cut

