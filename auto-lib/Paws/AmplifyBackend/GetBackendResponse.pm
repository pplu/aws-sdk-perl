
package Paws::AmplifyBackend::GetBackendResponse;
  use Moose;
  has AmplifyMetaConfig => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'amplifyMetaConfig');
  has AppId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appId');
  has AppName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appName');
  has BackendEnvironmentList => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'backendEnvironmentList');
  has BackendEnvironmentName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'backendEnvironmentName');
  has Error => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'error');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyBackend::GetBackendResponse

=head1 ATTRIBUTES


=head2 AmplifyMetaConfig => Str

A stringified version of the current configurations for your Amplify
project.


=head2 AppId => Str

The app ID.


=head2 AppName => Str

The name of the app.


=head2 BackendEnvironmentList => ArrayRef[Str|Undef]

A list of backend environments in an array.


=head2 BackendEnvironmentName => Str

The name of the backend environment.


=head2 Error => Str

If the request failed, this is the returned error.


=head2 _request_id => Str


=cut

