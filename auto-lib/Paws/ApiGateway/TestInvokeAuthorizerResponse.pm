
package Paws::ApiGateway::TestInvokeAuthorizerResponse;
  use Moose;
  has Authorization => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToList');
  has ClientStatus => (is => 'ro', isa => 'Int');
  has Latency => (is => 'ro', isa => 'Int');
  has Log => (is => 'ro', isa => 'Str');
  has Policy => (is => 'ro', isa => 'Str');
  has PrincipalId => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::TestInvokeAuthorizerResponse

=head1 ATTRIBUTES


=head2 Authorization => L<Paws::ApiGateway::MapOfStringToList>





=head2 ClientStatus => Int

The HTTP status code that the client would have received. Value is 0 if
the authorizer succeeded.



=head2 Latency => Int

The execution latency of the test authorizer request



=head2 Log => Str

The Amazon API Gateway execution log for the test authorizer request.



=head2 Policy => Str

The policy JSON document returned by the Authorizer



=head2 PrincipalId => Str

The principal identity returned by the Authorizer




=cut

