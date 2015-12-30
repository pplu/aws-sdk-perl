
package Paws::ApiGateway::TestInvokeMethodResponse;
  use Moose;
  has Body => (is => 'ro', isa => 'Str');
  has Headers => (is => 'ro', isa => 'Paws::ApiGateway::MapOfHeaderValues');
  has Latency => (is => 'ro', isa => 'Int');
  has Log => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Int');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::TestInvokeMethodResponse

=head1 ATTRIBUTES


=head2 Body => Str

The body of HTTP response.



=head2 Headers => L<Paws::ApiGateway::MapOfHeaderValues>

The headers of HTTP response.



=head2 Latency => Int

The execution latency of the test invoke request.



=head2 Log => Str

The Amazon API Gateway execution log for the test invoke request.



=head2 Status => Int

The HTTP status code.




=cut

