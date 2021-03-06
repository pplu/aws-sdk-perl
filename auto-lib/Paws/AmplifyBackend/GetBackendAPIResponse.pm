
package Paws::AmplifyBackend::GetBackendAPIResponse;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appId');
  has BackendEnvironmentName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'backendEnvironmentName');
  has Error => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'error');
  has ResourceConfig => (is => 'ro', isa => 'Paws::AmplifyBackend::BackendAPIResourceConfig', traits => ['NameInRequest'], request_name => 'resourceConfig');
  has ResourceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceName');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyBackend::GetBackendAPIResponse

=head1 ATTRIBUTES


=head2 AppId => Str

The app ID.


=head2 BackendEnvironmentName => Str

The name of the backend environment.


=head2 Error => Str

If the request fails, this error is returned.


=head2 ResourceConfig => L<Paws::AmplifyBackend::BackendAPIResourceConfig>

The resource configuration for this response object.


=head2 ResourceName => Str

The name of this resource.


=head2 _request_id => Str


=cut

