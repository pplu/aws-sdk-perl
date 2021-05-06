
package Paws::AppSync::CreateApiKeyResponse;
  use Moose;
  has ApiKey => (is => 'ro', isa => 'Paws::AppSync::ApiKey', traits => ['NameInRequest'], request_name => 'apiKey');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::CreateApiKeyResponse

=head1 ATTRIBUTES


=head2 ApiKey => L<Paws::AppSync::ApiKey>

The API key.


=head2 _request_id => Str


=cut

