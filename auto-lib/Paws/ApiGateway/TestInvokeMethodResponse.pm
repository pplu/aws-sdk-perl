
package Paws::ApiGateway::TestInvokeMethodResponse;
  use Moose;
  has Body => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'body');
  has Headers => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString', traits => ['NameInRequest'], request_name => 'headers');
  has Latency => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'latency');
  has Log => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'log');
  has MultiValueHeaders => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToList', traits => ['NameInRequest'], request_name => 'multiValueHeaders');
  has Status => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::TestInvokeMethodResponse

=head1 ATTRIBUTES


=head2 Body => Str

The body of the HTTP response.


=head2 Headers => L<Paws::ApiGateway::MapOfStringToString>

The headers of the HTTP response.


=head2 Latency => Int

The execution latency of the test invoke request.


=head2 Log => Str

The API Gateway execution log for the test invoke request.


=head2 MultiValueHeaders => L<Paws::ApiGateway::MapOfStringToList>

The headers of the HTTP response as a map from string to list of
values.


=head2 Status => Int

The HTTP status code.


=head2 _request_id => Str


=cut

