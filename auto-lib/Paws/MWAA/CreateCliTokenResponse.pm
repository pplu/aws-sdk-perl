
package Paws::MWAA::CreateCliTokenResponse;
  use Moose;
  has CliToken => (is => 'ro', isa => 'Str');
  has WebServerHostname => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MWAA::CreateCliTokenResponse

=head1 ATTRIBUTES


=head2 CliToken => Str

Create an Airflow CLI login token response for the provided JWT token.


=head2 WebServerHostname => Str

Create an Airflow CLI login token response for the provided webserver
hostname.


=head2 _request_id => Str


=cut

