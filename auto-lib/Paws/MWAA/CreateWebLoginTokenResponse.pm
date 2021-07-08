
package Paws::MWAA::CreateWebLoginTokenResponse;
  use Moose;
  has WebServerHostname => (is => 'ro', isa => 'Str');
  has WebToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MWAA::CreateWebLoginTokenResponse

=head1 ATTRIBUTES


=head2 WebServerHostname => Str

Create an Airflow Web UI login token response for the provided
webserver hostname.


=head2 WebToken => Str

Create an Airflow Web UI login token response for the provided JWT
token.


=head2 _request_id => Str


=cut

