
package Paws::ApiGateway::TestInvokeAuthorizerResponse;
  use Moose;
  has Authorization => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToList', traits => ['NameInRequest'], request_name => 'authorization');
  has Claims => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString', traits => ['NameInRequest'], request_name => 'claims');
  has ClientStatus => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'clientStatus');
  has Latency => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'latency');
  has Log => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'log');
  has Policy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policy');
  has PrincipalId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'principalId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::TestInvokeAuthorizerResponse

=head1 ATTRIBUTES


=head2 Authorization => L<Paws::ApiGateway::MapOfStringToList>




=head2 Claims => L<Paws::ApiGateway::MapOfStringToString>

The open identity claims
(https://openid.net/specs/openid-connect-core-1_0.html#StandardClaims),
with any supported custom attributes, returned from the Cognito Your
User Pool configured for the API.


=head2 ClientStatus => Int

The HTTP status code that the client would have received. Value is 0 if
the authorizer succeeded.


=head2 Latency => Int

The execution latency of the test authorizer request.


=head2 Log => Str

The API Gateway execution log for the test authorizer request.


=head2 Policy => Str

The JSON policy document returned by the Authorizer


=head2 PrincipalId => Str

The principal identity returned by the Authorizer


=head2 _request_id => Str


=cut

