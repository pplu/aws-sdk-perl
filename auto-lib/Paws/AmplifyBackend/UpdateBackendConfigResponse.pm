
package Paws::AmplifyBackend::UpdateBackendConfigResponse;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appId');
  has BackendManagerAppId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'backendManagerAppId');
  has Error => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'error');
  has LoginAuthConfig => (is => 'ro', isa => 'Paws::AmplifyBackend::LoginAuthConfigReqObj', traits => ['NameInRequest'], request_name => 'loginAuthConfig');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyBackend::UpdateBackendConfigResponse

=head1 ATTRIBUTES


=head2 AppId => Str

The app ID.


=head2 BackendManagerAppId => Str

The app ID for the backend manager.


=head2 Error => Str

If the request fails, this error is returned.


=head2 LoginAuthConfig => L<Paws::AmplifyBackend::LoginAuthConfigReqObj>

Describes the Amazon Cognito configurations for the Admin UI auth
resource to log in with.


=head2 _request_id => Str


=cut

