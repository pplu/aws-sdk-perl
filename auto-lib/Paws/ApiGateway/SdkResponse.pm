
package Paws::ApiGateway::SdkResponse;
  use Moose;
  has Body => (is => 'ro', isa => 'Str');
  has ContentDisposition => (is => 'ro', isa => 'Str');
  has ContentType => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::SdkResponse

=head1 ATTRIBUTES


=head2 Body => Str

The binary blob response to GetSdk, which contains the generated SDK.



=head2 ContentDisposition => Str

The content-disposition header value in the HTTP response.



=head2 ContentType => Str

The content-type header value in the HTTP response.




=cut

