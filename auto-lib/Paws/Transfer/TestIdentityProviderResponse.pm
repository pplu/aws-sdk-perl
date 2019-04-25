
package Paws::Transfer::TestIdentityProviderResponse;
  use Moose;
  has Message => (is => 'ro', isa => 'Str');
  has StatusCode => (is => 'ro', isa => 'Int', required => 1);
  has Url => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::TestIdentityProviderResponse

=head1 ATTRIBUTES


=head2 Message => Str

The result of the authorization test as a message.


=head2 B<REQUIRED> StatusCode => Int

The HTTP status code that is the response from your API Gateway.


=head2 B<REQUIRED> Url => Str

The endpoint of the service used to authenticate a user.


=head2 _request_id => Str


=cut

1;